#!/bin/bash
#%%%% cores available %%%%%%%%%%
Cores=4
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rm W* CHG*

for en
in 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900; do

cat > INCAR<<!
SYSTEM = fcc C 

ISMEAR = -5      # Wavefunction occupancies
ENCUT = $en



LCHARG = .FALSE. # Do not write charge density to save time
#LORBIT=11


#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

cp POSCAR-pc POSCAR

cp POTCAR-c POTCAR


mpirun -n $Cores vasp > output-$en.out
wait

awk '/energy  without entropy=/ {i=$7; print i} ' OUTCAR > tmp

echo $en $( cat tmp ) >> ecut.dat
rm tmp 

done
