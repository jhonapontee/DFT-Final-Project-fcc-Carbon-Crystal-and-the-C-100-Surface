#!/bin/bash
#%%%% cores available %%%%%%%%%%
Cores=4
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

opvol=11.4011

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

cat INCAR-bulk parallel > INCAR

cat > POSCAR<<!
C                                       
   -$opvol     
     2.5145000000000000    0.0000000000000000    0.0000000000000000
     1.2572500000000002    2.1776208778159707    0.0000000000000000
     1.2572500000000002    0.7258736259386571    2.0530806527427670
   C 
     2
Direct
  0.0000000000000000  0.0000000000000000  0.0000000000000000
  0.2500000000000000  0.2500000000000000  0.2500000000000000
!

mpirun -n $Cores vasp > output-bulk.out
wait

awk '/energy  without entropy=/ {ene=$7; print ene} ' OUTCAR > tmp

echo bulk $( cat tmp ) >> bulk.dat
rm tmp


mv OUTCAR OUTCAR-bulk
perl -i -pe '$_ = "  C \n" if $. == 6' CONTCAR
cp CONTCAR CONTCAR-bulk
perl -i -pe '$_ = "  C \n" if $. == 6' CHGCAR
mv CHGCAR CHGCAR-bulk.vasp
mv DOSCAR DOSCAR-bulk

cp KPOINTS-bs KPOINTS_OPT
cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
#NCORE=$Cores ! cores per procesor
NSIM=1  ! 
!

cat INCAR-bulk parallel > INCAR

mpirun -n $Cores vasp > output-bs.out
wait

rm KPOINTS_OPT

