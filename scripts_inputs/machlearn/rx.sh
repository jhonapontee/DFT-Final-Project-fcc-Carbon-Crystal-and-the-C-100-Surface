#!/bin/bash
#%%%% cores available %%%%%%%%%%
#Cores=$(awk '/cpu cores/ {x=$4; print x} ' /proc/cpuinfo | tail -1)
Cores=8
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd surf

rm -rf POTCAR W* vasp*

cat > parallel<<!
#%%%%%%%%%% PARALLELIZATION %%%%%%%%%%%%%%%%%%%%%%%
NCORE=1 ! cores per procesor
NSIM=4  ! 
!

for surf
# what surface are you relaxig?
in 2x2l5v10; do

cp ../sa/CONTCAR-2x2l5v10.rxo POSCAR
#the line below is only for this lecture
#cp CONTCAR-2x2l5v10ref.rx POSCAR
cat ../INCAR-rx parallel > INCAR
#check the kpoints grid you use!
cp ../KPOINTS-2x2 KPOINTS
cp ../POTCAR-c-h POTCAR

mpirun -n $Cores vasp > output-$surf-rx.out
wait

tmp2=$(awk '/ reached required/ {ene=$5; print ene} ' OUTCAR)
mv OUTCAR OUTCAR-$surf.rx
mv OSZICAR OSZICAR-$surf.rx
perl -i -pe '$_ = "  C   H\n" if $. == 6' CONTCAR
cp CONTCAR CONTCAR-$surf.rx
cp CONTCAR POSCAR
cat ../INCAR-st parallel > INCAR

mpirun -n $Cores vasp > output-$surf-st.out
wait

tmp=$(awk '/energy  without entropy=/ {ene=$7; print ene} ' OUTCAR) 
tmp3=$(tail -2 OSZICAR | awk '/RMM/ {x=$2; print x} ')

mv OUTCAR OUTCAR-$surf.st
mv OSZICAR OSZICAR-$surf.st
mv DOSCAR DOSCAR-$surf.st

echo $surf $tmp $tmp2 $tmp3 >> surfaces.dat

done
