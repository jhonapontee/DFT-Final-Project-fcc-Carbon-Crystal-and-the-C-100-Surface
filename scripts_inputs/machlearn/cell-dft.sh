#!/bin/bash
#%%%% cores available %%%%%%%%%%
#grep '^core id' /proc/cpuinfo |sort -u|wc -l > cores
#Cores=`echo $( cat cores )`
Cores=2
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drct=$(pwd)

cd $drct
mkdir dft-eosPC
cd dft-eosPC

rm -rf POTCAR W* vasp*


cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4 ! 
!

cat ../INCAR-dft-st parallel > INCAR
cp ../POTCAR-c POTCAR
cp ../KPOINTS-bulk2 KPOINTS 


for i in 0.960 0.965 0.970 0.975 0.980 0.985 0.990 0.995 1.000 1.005 1.010 1.020 1.030
do
 
    awk '{a=$0;if (NR==2) {a="'${i}'"};print a}' ${drct}/POSCAR-pc > POSCAR
    
    mpirun -np $Cores vasp > output-rx-$i.rx
    wait
    
    tmp=$(awk '/energy  without entropy=/ {ene=$7; print ene} ' OUTCAR)
    tmp3=$(tail -2 OSZICAR | awk '/DAV/ {x=$2; print x} ')
    vol=$(grep vol OUTCAR|tail -1|awk '{print $5}')
    echo $vol $tmp $tmp3 >> cell-dft.dat

done

