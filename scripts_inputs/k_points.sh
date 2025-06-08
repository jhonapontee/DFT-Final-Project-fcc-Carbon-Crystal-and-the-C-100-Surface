#!/bin/bash
#%%%% cores available %%%%%%%%%%
Cores=4
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for k
in 4 5 6 7 8 9 10 11 12; do

rm W*
cat > KPOINTS<<!
C fcc         # System label
0              # Automatic generation
Gamma          # Generation scheme
$k $k $k
0 0 0          # Shift
!

mpirun -n $Cores vasp > output-$k.out
wait

awk '/energy  without entropy=/ {ene=$7; print ene} ' OUTCAR > tmp

echo $k $( cat tmp ) >> kps.dat
rm tmp

done
head -10 INCAR > INCAR-bulk
