#!/bin/bash
#%%%% cores available %%%%%%%%%%
#Cores=$(awk '/cpu cores/ {x=$4; print x} ' /proc/cpuinfo | tail -1)
Cores=8
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cd surf

rm -rf POTCAR

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4 ! 
!

for surf
in 2x2l5v10; do

cp CONTCAR-$surf.rx POSCAR
cat ../INCAR-stm parallel > INCAR
cp ../KPOINTS-2x2 KPOINTS
cp ../POTCAR-c-h POTCAR

mpirun -n $Cores vasp > output-$surf-stm.out
wait

mv OUTCAR OUTCAR-$surf.stm
mv OSZICAR OSZICAR-$surf.stm
perl -i -pe '$_ = "  C   H\n" if $. == 6' PARCHG
mv PARCHG PARCHG-$surf.vasp

done
