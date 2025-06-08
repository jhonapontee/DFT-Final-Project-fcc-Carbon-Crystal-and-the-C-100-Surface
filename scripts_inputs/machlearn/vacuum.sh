#!/bin/bash
#%%%% cores available %%%%%%%%%%
#Cores=$(awk '/cpu cores/ {x=$4; print x} ' /proc/cpuinfo | tail -1)
Cores=4
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mkdir surf
cd surf

cat > parallel<<!
%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

rm ML*

ln -s ../ml/ML_FFN ML_FF

cp ../KPOINTS-ml1x1 KPOINTS
cat ../INCAR-ml-st parallel > INCAR
cp ../POTCAR-c POTCAR

rm W* CHG* vasp*

for lat
in 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0; do
top=3.5727418210000002
c=`echo "scale=17; $lat + $top" | bc`;

cat > POSCAR<<!
C : 100-1x1-l5v$lat
 1.0000000000000000
     2.5263000000000000    0.0000000000000000    0.0000000000000000
     0.0000000000000000    2.5263000000000000    0.0000000000000000
     0.0000000000000000    0.0000000000000000   $c
 C
   5
Cartesian
  0.0000000000000000  1.2631500000000000  2.6795224339999995
  1.2631500000000000  0.0000000000000000  0.8932193869999999
  0.0000000000000000  0.0000000000000000  1.7863030469999996
  1.2631500000000000  1.2631500000000000  0.0000000000000000
  1.2631500000000000  1.2631500000000000  3.5727418210000002
!

cp POSCAR POSCAR-1x1l5v$lat.init
mpirun -n $Cores vasp > output-l$lat.out
wait

awk '/energy  without entropy=/ {ene=$9; print ene} ' OUTCAR > tmp

echo $lat $( cat tmp ) >> vacuum.dat
rm W* CHG* vasp*

done
