#!/bin/bash
#%%%% cores available %%%%%%%%%%
#grep '^core id' /proc/cpuinfo |sort -u|wc -l > cores
#Cores=`echo $( cat cores )`
Cores=8
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


dir=mls
dir2=surf

mkdir $dir
cd $dir

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

cp ../$dir2/POSCAR-2x2l5v10-initNEW.POSCAR POSCAR
cat ../INCAR-mls parallel > INCAR
cp ../KPOINTS-ml2x2 KPOINTS
cp ../POTCAR-c-h POTCAR
cp ../ml/ML_ABN ML_AB

rm W* vasp*

mpirun -n $Cores vasp > output.ml
wait

step=$(grep Ionic OUTCAR | tail -1 | awk '{print "Ionic Step="$4}')
time=$(grep 'Elapsed time' OUTCAR | awk '{print "time(sec)="$4}')

echo $dir $step $time >> result-ml.dat

mv OUTCAR OUTCAR.ml
mv OSZICAR OSZICAR.ml
perl -i -pe '$_ = "  C   H\n" if $. == 6' CONTCAR



