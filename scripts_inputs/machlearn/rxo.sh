#!/bin/bash
#%%%% cores available %%%%%%%%%%
#Cores=$(awk '/cpu cores/ {x=$4; print x} ' /proc/cpuinfo | tail -1)
Cores=4
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd surf

rm POTCAR
cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

rm W* CHG* vasp*

for surf
in 1x1l5v10; do

cp POSCAR-$surf POSCAR
cat ../INCAR-rx parallel > INCAR

cp ../KPOINTS-1x1 KPOINTS
cp ../POTCAR-c-h POTCAR

mpirun -n $Cores vasp > output-$surf-rxo.out
wait

#awk '/energy  without entropy=/ {ene=$7; print ene} ' OUTCAR > tmp
#echo $surf $( cat tmp ) >> surface.dat
mv OUTCAR OUTCAR-$surf.rxo
perl -i -pe '$_ = "  C   H\n" if $. == 6' CONTCAR
cp CONTCAR CONTCAR-$surf.rxo

done
