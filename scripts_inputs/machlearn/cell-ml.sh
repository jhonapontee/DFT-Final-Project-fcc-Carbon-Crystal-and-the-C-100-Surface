#!/bin/bash
#%%%% cores available %%%%%%%%%%
#grep '^core id' /proc/cpuinfo |sort -u|wc -l > cores
#Cores=`echo $( cat cores )`
Cores=4
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd ml
mkdir eos-mlPC
cd eos-mlPC

rm -rf POTCAR

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

cat ../../INCAR-ml-st parallel > INCAR
cp ../../POTCAR-c POTCAR
cp ../../KPOINTS-bulk2 KPOINTS

ln -s ../ML_FFN ML_FF

for i in 0.960 0.965 0.970 0.975 0.980 0.985 0.990 0.995 1.000 1.005 1.010 1.020 1.030
do
 
    awk '{a=$0;if (NR==2) {a="'${i}'"};print a}' ../../POSCAR-pc > POSCAR

mpirun -n $Cores vasp > output-$i.out
wait

tmp=$(awk '/(sigma->0)/ {ene=$9; print ene} ' OUTCAR)
vol=$(grep vol OUTCAR|tail -1|awk '{print $5}')

echo $vol $tmp >> cell-ml.dat

done
