#!/bin/bash
#%%%% cores available %%%%%%%%%%
#grep '^core id' /proc/cpuinfo |sort -u|wc -l > cores
#Cores=`echo $( cat cores )`
Cores=8
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


dir=sa
dirml=mls

mkdir $dir
cd $dir

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

ln -s ../$dirml/ML_FFN ML_FF
cp ../$dirml/CONTCAR POSCAR
cat ../INCAR-sa parallel > INCAR
cp ../KPOINTS-ml2x2 KPOINTS
cp ../POTCAR-c-h POTCAR

rm W* vasp*

mpirun -n $Cores vasp > output.ml
wait

step=$(grep Ionic OUTCAR | tail -1 | awk '{print "Ionic Step="$4}')
time=$(grep 'Elapsed time' OUTCAR | awk '{print "time(sec)="$4}')

echo $dir $step $time >> result-sa.dat

mv OUTCAR OUTCAR.sa
mv OSZICAR OSZICAR.sa
perl -i -pe '$_ = "  C   H\n" if $. == 6' CONTCAR
cp CONTCAR CONTCAR-2x2l5v10.rxo


