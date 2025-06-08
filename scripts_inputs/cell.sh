#!/bin/bash
#%%%% cores available %%%%%%%%%%
Cores=2
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rm W* CHG*

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

cat INCAR-bulk parallel > INCAR

for lat
in 8.4 8.9 9.4 9.9 10.4 10.9 11.4 11.9 12.4 12.9 13.4 13.9 14.4; do

cat > POSCAR<<!
C 
 -$lat
     2.5145000000000000    0.0000000000000000    0.0000000000000000
     1.2572500000000002    2.1776208778159707    0.0000000000000000
     1.2572500000000002    0.7258736259386571    2.0530806527427670
   2
Cartesian
  0.0000000000000000  0.0000000000000000  0.0000000000000000
  1.2572500000000000  0.7258736259386569  0.5132701631856917
!

mpirun -n $Cores vasp > output-$lat.out
wait

awk '/energy  without entropy=/ {ene=$7; print ene} ' OUTCAR > tmp

echo $lat $( cat tmp ) >> cell.dat

done
cp KPOINTS KPOINTS-bulk
