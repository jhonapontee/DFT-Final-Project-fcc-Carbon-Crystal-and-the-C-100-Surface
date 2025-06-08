#!/bin/bash
#%%%% cores available %%%%%%%%%%
grep '^core id' /proc/cpuinfo |sort -u|wc -l > cores
Cores=`echo $( cat cores )`
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


dir=ml

mkdir $dir
cd $dir

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

cp ../POSCAR-222 POSCAR
cat ../INCAR-ml parallel > INCAR
cp ../ICONST .
cp ../KPOINTS-ml KPOINTS
cp ../POTCAR-c POTCAR

rm W*

mpirun -n $Cores vasp > output.ml
wait

step=$(grep Ionic OUTCAR | tail -1 | awk '{print "Ionic Step="$4}')
time=$(grep 'Elapsed time' OUTCAR | awk '{print "time(sec)="$4}')

echo $dir $step $time >> result-ml.dat

mv OUTCAR OUTCAR.ml
mv OSZICAR OSZICAR.ml
