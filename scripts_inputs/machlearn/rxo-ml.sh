#!/bin/bash
#%%%% cores available %%%%%%%%%%
#Cores=$(awk '/cpu cores/ {x=$4; print x} ' /proc/cpuinfo | tail -1)
Cores=6
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd surf

ln -s ../ml/ML_FFN ML_FF

rm -f POTCAR
cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

rm W* CHG*

for surf
in 2x2c; do

cp POSCAR-$surf POSCAR
cat ../INCAR-ml-rx parallel > INCAR

cp ../KPOINTS-ml2x2 KPOINTS
cp ../POTCAR-c POTCAR

mpirun -n $Cores vasp > output-$surf-ml-rxo.out
wait

#awk '/energy  without entropy=/ {ene=$7; print ene} ' OUTCAR > tmp
#echo $surf $( cat tmp ) >> surface.dat
mv OUTCAR OUTCAR-$surf-ml.rxo
perl -i -pe '$_ = "  C \n" if $. == 6' CONTCAR
cp CONTCAR CONTCAR-$surf-ml.rxo

done
