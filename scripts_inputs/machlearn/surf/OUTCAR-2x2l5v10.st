 vasp.6.4.2 20Jul23 (build Oct 18 2023 12:49:41) complex                         
 executed on             LinuxGNU date 2025.06.06  15:42:14
 running    8 mpi-ranks, with    1 threads/rank, on    1 nodes
 distrk:  each k-point on    8 cores,    1 groups
 distr:  one band on NCORE=   1 cores,    8 groups


--------------------------------------------------------------------------------------------------------


 INCAR:
   SYSTEM = C(100)
   ISMEAR = -5
   ENCUT = 800
   LREAL = auto
   ALGO = F
   IDIPOL = 3
   LDIPOL = T
   LCHARG = .FALSE.
   NCORE = 1
   NSIM = 4

 POTCAR:    PAW_PBE C 08Apr2002                   
 POTCAR:    PAW_PBE H 15Jun2001                   
 POTCAR:    PAW_PBE C 08Apr2002                   
   SHA256 =  253f7b50bb8d59471dbedb8285d89021f4a42ed1a2c5d38a03a736e69125dd95 C/POTCAR              
   COPYR  = (c) Copyright 08Apr2002 Georg Kresse                                                    
   COPYR  = This file is part of the software VASP. Any use, copying, and all other rights are regul
   COPYR  = If you do not have a valid VASP license, you may not use, copy or distribute this file. 
   VRHFIN =C: s2p2                                                                                  
   LEXCH  = PE                                                                                      
   EATOM  =   147.1560 eV,   10.8157 Ry                                                             
                                                                                                    
   TITEL  = PAW_PBE C 08Apr2002                                                                     
   LULTRA =        F    use ultrasoft PP ?                                                          
   IUNSCR =        1    unscreen: 0-lin 1-nonlin 2-no                                               
   RPACOR =    1.200    partial core radius                                                         
   POMASS =   12.011; ZVAL   =    4.000    mass and valenz                                          
   RCORE  =    1.500    outmost cutoff radius                                                       
   RWIGS  =    1.630; RWIGS  =    0.863    wigner-seitz radius (au A)                               
   ENMAX  =  400.000; ENMIN  =  300.000 eV                                                          
   ICORE  =        2    local potential                                                             
   LCOR   =        T    correct aug charges                                                         
   LPAW   =        T    paw PP                                                                      
   EAUG   =  644.873                                                                                
   DEXC   =    0.000                                                                                
   RMAX   =    1.529    core radius for proj-oper                                                   
   RAUG   =    1.300    factor for augmentation sphere                                              
   RDEP   =    1.501    radius for radial grids                                                     
   RDEPT  =    1.300    core radius for aug-charge                                                  
                                                                                                    
   Atomic configuration                                                                             
    4 entries                                                                                       
     n  l   j            E        occ.                                                              
     1  0  0.50      -273.3789   2.0000                                                             
     2  0  0.50       -13.7508   2.0000                                                             
     2  1  0.50        -5.2854   2.0000                                                             
     3  2  1.50        -5.4423   0.0000                                                             
   Description                                                                                      
     l       E           TYP  RCUT    TYP  RCUT                                                     
     0    -13.7508458     23  1.200                                                                 
     0     -8.2022199     23  1.200                                                                 
     1     -5.2854383     23  1.500                                                                 
     1     34.0145650     23  1.500                                                                 
     2     -5.4423304      7  1.500                                                                 
  local pseudopotential read in
  partial core-charges read in
  partial kinetic energy density read in
  atomic valenz-charges read in
  non local Contribution for L=           0  read in
    real space projection operators read in
  non local Contribution for L=           0  read in
    real space projection operators read in
  non local Contribution for L=           1  read in
    real space projection operators read in
  non local Contribution for L=           1  read in
    real space projection operators read in
    PAW grid and wavefunctions read in

   number of l-projection  operators is LMAX  =           4
   number of lm-projection operators is LMMAX =           8

 POTCAR:    PAW_PBE H 15Jun2001                   
   SHA256 =  030f79b5d3ab3cf0e668861823c8fb652ff669f3e15e46930bd03bfd63a607b6 H/POTCAR              
   COPYR  = (c) Copyright 15Jun2001 Georg Kresse                                                    
   COPYR  = This file is part of the software VASP. Any use, copying, and all other rights are regul
   COPYR  = If you do not have a valid VASP license, you may not use, copy or distribute this file. 
   VRHFIN =H: ultrasoft test                                                                        
   LEXCH  = PE                                                                                      
   EATOM  =    12.4884 eV,    0.9179 Ry                                                             
                                                                                                    
   TITEL  = PAW_PBE H 15Jun2001                                                                     
   LULTRA =        F    use ultrasoft PP ?                                                          
   IUNSCR =        0    unscreen: 0-lin 1-nonlin 2-no                                               
   RPACOR =    0.000    partial core radius                                                         
   POMASS =    1.000; ZVAL   =    1.000    mass and valenz                                          
   RCORE  =    1.100    outmost cutoff radius                                                       
   RWIGS  =    0.700; RWIGS  =    0.370    wigner-seitz radius (au A)                               
   ENMAX  =  250.000; ENMIN  =  200.000 eV                                                          
   RCLOC  =    0.701    cutoff for local pot                                                        
   LCOR   =        T    correct aug charges                                                         
   LPAW   =        T    paw PP                                                                      
   EAUG   =  400.000                                                                                
   RMAX   =    1.123    core radius for proj-oper                                                   
   RAUG   =    1.200    factor for augmentation sphere                                              
   RDEP   =    1.112    radius for radial grids                                                     
   RDEPT  =    0.926    core radius for aug-charge                                                  
                                                                                                    
   Atomic configuration                                                                             
    2 entries                                                                                       
     n  l   j            E        occ.                                                              
     1  0  0.50        -6.4927   1.0000                                                             
     2  1  0.50        -3.4015   0.0000                                                             
   Description                                                                                      
     l       E           TYP  RCUT    TYP  RCUT                                                     
     0     -6.4927494     23  1.100                                                                 
     0      6.8029130     23  1.100                                                                 
     1     -4.0817478     23  1.100                                                                 
  local pseudopotential read in
  atomic valenz-charges read in
  non local Contribution for L=           0  read in
    real space projection operators read in
  non local Contribution for L=           0  read in
    real space projection operators read in
  non local Contribution for L=           1  read in
    real space projection operators read in
    PAW grid and wavefunctions read in

   number of l-projection  operators is LMAX  =           3
   number of lm-projection operators is LMMAX =           5

 Optimization of the real space projectors (new method)

 maximal supplied QI-value         = 25.13
 optimisation between [QCUT,QGAM] = [ 14.33, 28.90] = [ 57.47,233.94] Ry 
 Optimized for a Real-space Cutoff    0.89 Angstroem

   l    n(q)    QCUT    max X(q) W(low)/X(q) W(high)/X(q)  e(spline) 
   0      8    14.326   115.676    0.20E-03    0.54E-03    0.88E-07
   0      8    14.326    87.132    0.19E-03    0.54E-03    0.88E-07
   1      7    14.326     4.429    0.49E-03    0.47E-03    0.10E-06
   1      7    14.326     2.733    0.38E-03    0.36E-03    0.91E-07
 Optimization of the real space projectors (new method)

 maximal supplied QI-value         = 34.20
 optimisation between [QCUT,QGAM] = [ 14.37, 28.73] = [ 57.79,231.16] Ry 
 Optimized for a Real-space Cutoff    0.92 Angstroem

   l    n(q)    QCUT    max X(q) W(low)/X(q) W(high)/X(q)  e(spline) 
   0      8    14.366    19.460    0.37E-03    0.44E-03    0.12E-06
   0      8    14.366    12.209    0.35E-03    0.42E-03    0.11E-06
   1      7    14.366     4.655    0.78E-04    0.25E-03    0.18E-06
  PAW_PBE C 08Apr2002                   :
 energy of atom  1       EATOM= -147.1560
 kinetic energy error for atom=    0.0016 (will be added to EATOM!!)
  PAW_PBE H 15Jun2001                   :
 energy of atom  2       EATOM=  -12.4884
 kinetic energy error for atom=    0.0002 (will be added to EATOM!!)


 POSCAR:  C
  positions in direct lattice
  velocities in cartesian coordinates
 exchange correlation table for  LEXCH =        8
   RHO(1)=    0.500       N(1)  =     2000
   RHO(2)=  100.500       N(2)  =     4000



--------------------------------------------------------------------------------------------------------


 ion  position               nearest neighbor table
   1  0.000  0.000  0.197-  10 1.58   5 1.58   4 1.59  14 1.59
   2  0.250  0.250  0.069-  21 1.05  22 1.05   9 1.48   4 1.55
   3  0.250  0.363  0.299-   8 1.38  15 1.51   5 1.51
   4  0.250  0.000  0.131-   2 1.55   7 1.55   1 1.59  11 1.59
   5  0.000  0.268  0.252-  13 1.51   3 1.51   6 1.57   1 1.58
   6  0.000  0.500  0.180-   9 1.52  19 1.52  10 1.57   5 1.57
   7  0.250  0.750  0.069-  23 1.05  24 1.05   9 1.48   4 1.55
   8  0.250  0.637  0.299-   3 1.38  20 1.51  10 1.51
   9  0.250  0.500  0.121-   7 1.48   2 1.48   6 1.52  16 1.52
  10  0.000  0.732  0.252-  18 1.51   8 1.51   6 1.57   1 1.58
  11  0.500  0.000  0.197-  20 1.58  15 1.58  14 1.59   4 1.59
  12  0.750  0.250  0.069-  25 1.05  26 1.05  19 1.48  14 1.55
  13  0.750  0.363  0.299-  18 1.38  15 1.51   5 1.51
  14  0.750  0.000  0.131-  12 1.55  17 1.55  11 1.59   1 1.59
  15  0.500  0.268  0.252-   3 1.51  13 1.51  16 1.57  11 1.58
  16  0.500  0.500  0.180-   9 1.52  19 1.52  15 1.57  20 1.57
  17  0.750  0.750  0.069-  27 1.05  28 1.05  19 1.48  14 1.55
  18  0.750  0.637  0.299-  13 1.38  10 1.51  20 1.51
  19  0.750  0.500  0.121-  17 1.48  12 1.48   6 1.52  16 1.52
  20  0.500  0.732  0.252-   8 1.51  18 1.51  16 1.57  11 1.58
  21  0.392  0.250  0.016-   2 1.05
  22  0.108  0.250  0.016-   2 1.05
  23  0.392  0.750  0.016-   7 1.05
  24  0.108  0.750  0.016-   7 1.05
  25  0.892  0.250  0.016-  12 1.05
  26  0.608  0.250  0.016-  12 1.05
  27  0.892  0.750  0.016-  17 1.05
  28  0.608  0.750  0.016-  17 1.05

  LATTYP: Found a simple tetragonal cell.
 ALAT       =     5.0526000000
 C/A-ratio  =     2.8841982346
  
  Lattice vectors:
  
 A1 = (   5.0526000000,   0.0000000000,   0.0000000000)
 A2 = (   0.0000000000,   5.0526000000,   0.0000000000)
 A3 = (   0.0000000000,   0.0000000000,  14.5727000000)


Analysis of symmetry for initial positions (statically):
=====================================================================
 Subroutine PRICEL returns following result:
 
  LATTYP: Found a simple orthorhombic cell.
 ALAT       =     2.5263000000
 B/A-ratio  =     2.0000000000
 C/A-ratio  =     5.7683964691
  
  Lattice vectors:
  
 A1 = (   2.5263000000,   0.0000000000,   0.0000000000)
 A2 = (   0.0000000000,   5.0526000000,   0.0000000000)
 A3 = (   0.0000000000,   0.0000000000,  14.5727000000)
 
   2 primitive cells build up your supercell.
 

 Routine SETGRP: Setting up the symmetry group for a 
 simple tetragonal supercell.


 Subroutine GETGRP returns: Found  2 space group operations
 (whereof  2 operations were pure point group operations)
 out of a pool of 16 trial point group operations.


The static configuration has the point symmetry C_1h.


Analysis of symmetry for dynamics (positions and initial velocities):
=====================================================================
 Subroutine PRICEL returns following result:
 
  LATTYP: Found a simple orthorhombic cell.
 ALAT       =     2.5263000000
 B/A-ratio  =     2.0000000000
 C/A-ratio  =     5.7683964691
  
  Lattice vectors:
  
 A1 = (   2.5263000000,   0.0000000000,   0.0000000000)
 A2 = (   0.0000000000,   5.0526000000,   0.0000000000)
 A3 = (   0.0000000000,   0.0000000000,  14.5727000000)
 
   2 primitive cells build up your supercell.
 

 Routine SETGRP: Setting up the symmetry group for a 
 simple tetragonal supercell.


 Subroutine GETGRP returns: Found  2 space group operations
 (whereof  2 operations were pure point group operations)
 out of a pool of 16 trial point group operations.


The dynamic configuration has the point symmetry C_1h.


Analysis of constrained symmetry for selective dynamics:
=====================================================================
 Subroutine PRICEL returns following result:
 
  LATTYP: Found a simple orthorhombic cell.
 ALAT       =     2.5263000000
 B/A-ratio  =     2.0000000000
 C/A-ratio  =     5.7683964691
  
  Lattice vectors:
  
 A1 = (   2.5263000000,   0.0000000000,   0.0000000000)
 A2 = (   0.0000000000,   5.0526000000,   0.0000000000)
 A3 = (   0.0000000000,   0.0000000000,  14.5727000000)
 
   2 primitive cells build up your supercell.
 

 Routine SETGRP: Setting up the symmetry group for a 
 simple tetragonal supercell.


 Subroutine GETGRP returns: Found  2 space group operations
 (whereof  2 operations were pure point group operations)
 out of a pool of 16 trial point group operations.


The constrained configuration has the point symmetry C_1h.


 Subroutine INISYM returns: Found  2 space group operations
 (whereof  2 operations are pure point group operations),
 and found     2 'primitive' translations


----------------------------------------------------------------------------------------

                                     Primitive cell                                     

  volume of cell :     186.0115

  direct lattice vectors                    reciprocal lattice vectors
     2.526300000  0.000000000  0.000000000     0.395835807  0.000000000  0.000000000
     0.000000000  5.052600000  0.000000000     0.000000000  0.197917904  0.000000000
     0.000000000  0.000000000 14.572700000     0.000000000  0.000000000  0.068621463

  length of vectors
     2.526300000  5.052600000 14.572700000     0.395835807  0.197917904  0.068621463

  position of ions in fractional coordinates (direct lattice)
     0.000003189  0.000001328  0.196655320
     0.500000000  0.250000000  0.068620000
     0.499997834  0.363317079  0.298552211
     0.500001927  0.000000351  0.130577337
     0.000004576  0.268210944  0.251811239
     0.000004177  0.500000930  0.179578410
     0.500000000  0.750000000  0.068620000
     0.500011971  0.636686436  0.298552072
     0.500003176  0.500000248  0.121401090
     0.000006155  0.731791349  0.251810950
     0.784298680  0.250000000  0.016123816
     0.215701320  0.250000000  0.016123816
     0.784298680  0.750000000  0.016123816
     0.215701320  0.750000000  0.016123816

  ion indices of the primitive-cell ions
   primitive index   ion index
                 1           1
                 2           2
                 3          13
                 4           4
                 5           5
                 6           6
                 7           7
                 8          18
                 9           9
                10          10
                11          25
                12          22
                13          27
                14          24

----------------------------------------------------------------------------------------



 KPOINTS: C fcc         # System label            

Automatic generation of k-mesh.
 Grid dimensions read from file:
 generate k-points for:    3    3    1

 Generating k-lattice:

  Cartesian coordinates                     Fractional coordinates (reciprocal lattice)
     0.065972635  0.000000000  0.000000000     0.333333333  0.000000000  0.000000000
     0.000000000  0.065972635  0.000000000     0.000000000  0.333333333  0.000000000
     0.000000000  0.000000000  0.068621463     0.000000000  0.000000000  1.000000000

  Length of vectors
     0.065972635  0.065972635  0.068621463

  Shift w.r.t. Gamma in fractional coordinates (k-lattice)
     0.000000000  0.000000000  0.000000000

 TETIRR: Found     19 inequivalent tetrahedra from       54
 
 Subroutine IBZKPT returns following result:
 ===========================================
 
 Found      4 irreducible k-points:
 
 Following reciprocal coordinates:
            Coordinates               Weight
  0.000000  0.000000  0.000000      1.000000
  0.333333  0.000000  0.000000      2.000000
  0.000000  0.333333  0.000000      2.000000
  0.333333  0.333333  0.000000      4.000000
 
 Following cartesian coordinates:
            Coordinates               Weight
  0.000000  0.000000  0.000000      1.000000
  0.065973  0.000000  0.000000      2.000000
  0.000000  0.065973  0.000000      2.000000
  0.065973  0.065973  0.000000      4.000000
 


--------------------------------------------------------------------------------------------------------




 Dimension of arrays:
   k-points           NKPTS =      4   k-points in BZ     NKDIM =      4   number of bands    NBANDS=     64
   number of dos      NEDOS =    301   number of ions     NIONS =     28
   non local maximal  LDIM  =      4   non local SUM 2l+1 LMDIM =      8
   total plane-waves  NPLWV = 139968
   max r-space proj   IRMAX =   1277   max aug-charges    IRDMAX=   4639
   dimension x,y,z NGX =    36 NGY =   36 NGZ =  108
   dimension x,y,z NGXF=    72 NGYF=   72 NGZF=  216
   support grid    NGXF=    72 NGYF=   72 NGZF=  216
   ions per type =              20   8
   NGX,Y,Z   is equivalent  to a cutoff of  11.85, 11.85, 12.32 a.u.
   NGXF,Y,Z  is equivalent  to a cutoff of  23.69, 23.69, 24.64 a.u.

 SYSTEM =  C(100)                                  
 POSCAR =   C                                      

 Startparameter for this run:
   NWRITE =      2    write-flag & timer
   PREC   = normal    normal or accurate (medium, high low for compatibility)
   ISTART =      1    job   : 0-new  1-cont  2-samecut
   ICHARG =      0    charge: 1-file 2-atom 10-const
   ISPIN  =      1    spin polarized calculation?
   LNONCOLLINEAR =      F non collinear calculations
   LSORBIT =      F    spin-orbit coupling
   INIWAV =      1    electr: 0-lowe 1-rand  2-diag
   LASPH  =      F    aspherical Exc in radial PAW
 Electronic Relaxation 1
   ENCUT  =  800.0 eV  58.80 Ry    7.67 a.u.  11.65 11.65 33.61*2*pi/ulx,y,z
   ENINI  =  800.0     initial cutoff
   ENAUG  =  644.9 eV  augmentation charge cutoff
   NELM   =     60;   NELMIN=  2; NELMDL=  0     # of ELM steps 
   EDIFF  = 0.1E-03   stopping-criterion for ELM
   LREAL  =      T    real-space projection
   NLSPLINE    = F    spline interpolate recip. space projectors
   LCOMPAT=      F    compatible to vasp.4.4
   GGA_COMPAT  = T    GGA compatible to vasp.4.4-vasp.4.6
   LMAXPAW     = -100 max onsite density
   LMAXMIX     =    2 max onsite mixed and CHGCAR
   VOSKOWN=      0    Vosko Wilk Nusair interpolation
   ROPT   =   -0.00050  -0.00050
 Ionic relaxation
   EDIFFG = 0.1E-02   stopping-criterion for IOM
   NSW    =      0    number of steps for IOM
   NBLOCK =      1;   KBLOCK =      1    inner block; outer block 
   IBRION =     -1    ionic relax: 0-MD 1-quasi-New 2-CG
   NFREE  =      0    steps in history (QN), initial steepest desc. (CG)
   ISIF   =      2    stress and relaxation
   IWAVPR =     10    prediction:  0-non 1-charg 2-wave 3-comb
   ISYM   =      2    0-nonsym 1-usesym 2-fastsym
   LCORR  =      T    Harris-Foulkes like correction to forces

   POTIM  = 0.5000    time-step for ionic-motion
   TEIN   =    0.0    initial temperature
   TEBEG  =    0.0;   TEEND  =   0.0 temperature during run
   SMASS  =  -3.00    Nose mass-parameter (am)
   estimated Nose-frequenzy (Omega)   =  0.10E-29 period in steps = 0.13E+47 mass=  -0.583E-27a.u.
   SCALEE = 1.0000    scale energy and forces
   NPACO  =    256;   APACO  = 10.0  distance and # of slots for P.C.
   PSTRESS=    0.0 pullay stress

  Mass of Ions in am
   POMASS =  12.01  1.00
  Ionic Valenz
   ZVAL   =   4.00  1.00
  Atomic Wigner-Seitz radii
   RWIGS  =  -1.00 -1.00
  virtual crystal weights 
   VCA    =   1.00  1.00
   NELECT =      88.0000    total number of electrons
   NUPDOWN=      -1.0000    fix difference up-down

 DOS related values:
   EMIN   =  10.00;   EMAX   =-10.00  energy-range for DOS
   EFERMI =   0.00;   METHOD = LEGACY      
   ISMEAR =    -5;   SIGMA  =   0.20  broadening in eV -4-tet -1-fermi 0-gaus

 Electronic relaxation 2 (details)
   IALGO  =     68    algorithm
   LDIAG  =      T    sub-space diagonalisation (order eigenvalues)
   LSUBROT=      F    optimize rotation matrix (better conditioning)
   TURBO    =      0    0=normal 1=particle mesh
   IRESTART =      0    0=no restart 2=restart with 2 vectors
   NREBOOT  =      0    no. of reboots
   NMIN     =      0    reboot dimension
   EREF     =   0.00    reference energy to select bands
   IMIX   =      4    mixing-type and parameters
     AMIX     =   0.40;   BMIX     =  1.00
     AMIX_MAG =   1.60;   BMIX_MAG =  1.00
     AMIN     =   0.10
     WC   =   100.;   INIMIX=   1;  MIXPRE=   1;  MAXMIX= -45

 Intra band minimization:
   WEIMIN = 0.0000     energy-eigenvalue tresh-hold
   EBREAK =  0.39E-06  absolut break condition
   DEPER  =   0.30     relativ break condition  

   TIME   =   0.40     timestep for ELM

  volume/ion in A,a.u.               =      13.29        89.66
  Fermi-wavevector in a.u.,A,eV,Ry     =   1.012463  1.913277 13.947074  1.025081
  Thomas-Fermi vector in A             =   2.145574

 Write flags
   LWAVE        =      T    write WAVECAR
   LDOWNSAMPLE  =      F    k-point downsampling of WAVECAR
   LCHARG       =      F    write CHGCAR
   LVTOT        =      F    write LOCPOT, total local potential
   LVHAR        =      F    write LOCPOT, Hartree potential only
   LELF         =      F    write electronic localiz. function (ELF)
   LORBIT       =      0    0 simple, 1 ext, 2 COOP (PROOUT), +10 PAW based schemes


 Dipole corrections
   LMONO  =      F    monopole corrections only (constant potential shift)
   LDIPOL =      T    correct potential (dipole corrections)
   IDIPOL =      3    1-x, 2-y, 3-z, 4-all directions 
   EPSILON=  1.0000000 bulk dielectric constant

 Exchange correlation treatment:
   GGA     =    --    GGA type
   LEXCH   =     8    internal setting for exchange type
   LIBXC   =     F    Libxc                    
   VOSKOWN =     0    Vosko Wilk Nusair interpolation
   LHFCALC =     F    Hartree Fock is set to
   LHFONE  =     F    Hartree Fock one center treatment
   AEXX    =    0.0000 exact exchange contribution

 Linear response parameters
   LEPSILON=     F    determine dielectric tensor
   LRPA    =     F    only Hartree local field effects (RPA)
   LNABLA  =     F    use nabla operator in PAW spheres
   LVEL    =     F    velocity operator in full k-point grid
   CSHIFT  =0.1000    complex shift for real part using Kramers Kronig
   OMEGAMAX=  -1.0    maximum frequency
   DEG_THRESHOLD= 0.2000000E-02 threshold for treating states as degnerate
   RTIME   =   -0.100 relaxation time in fs
  (WPLASMAI=    0.000 imaginary part of plasma frequency in eV, 0.658/RTIME)
   DFIELD  = 0.0000000 0.0000000 0.0000000 field for delta impulse in time

  Optional k-point grid parameters
   LKPOINTS_OPT  =     F    use optional k-point grid
   KPOINTS_OPT_MODE=     1    mode for optional k-point grid

 Orbital magnetization related:
   ORBITALMAG=     F  switch on orbital magnetization
   LCHIMAG   =     F  perturbation theory with respect to B field
   DQ        =  0.001000  dq finite difference perturbation B field
   LLRAUG    =     F  two centre corrections for induced B field
   LBONE     =     F  B-component reconstruction in AE one-centre
   LVGVCALC  =     T  calculate vGv susceptibility
   LVGVAPPL  =     F  apply vGv susceptibility instead of pGv for G=0

 Random number generation:
   RANDOM_GENERATOR = DEFAULT
   PCG_SEED         = not used


--------------------------------------------------------------------------------------------------------


 Static calculation
 charge density and potential will be updated during run
 non-spin polarized calculation
 RMM-DIIS sequential band-by-band and
  variant of blocked Davidson during initial phase
 perform sub-space diagonalisation
    before iterative eigenvector-optimisation
 modified Broyden-mixing scheme, WC =      100.0
 initial mixing is a Kerker type mixing with AMIX =  0.4000 and BMIX =      1.0000
 Hartree-type preconditioning will be used
 using additional bands           20
 real space projection scheme for non local part
 use partial core corrections
 calculate Harris-corrections to forces   (improved forces if not selfconsistent)
 use gradient corrections 
 use of overlap-Matrix (Vanderbilt PP)
 Fermi weights with tetrahedron method with Bloechl corrections


--------------------------------------------------------------------------------------------------------


  energy-cutoff  :      800.00
  volume of cell :      372.02
      direct lattice vectors                 reciprocal lattice vectors
     5.052600000  0.000000000  0.000000000     0.197917904  0.000000000  0.000000000
     0.000000000  5.052600000  0.000000000     0.000000000  0.197917904  0.000000000
     0.000000000  0.000000000 14.572700000     0.000000000  0.000000000  0.068621463

  length of vectors
     5.052600000  5.052600000 14.572700000     0.197917904  0.197917904  0.068621463



 old parameters found on file WAVECAR:
  energy-cutoff  :      800.00
  volume of cell :      372.02
      direct lattice vectors                 reciprocal lattice vectors
     5.052600000  0.000000000  0.000000000     0.197917904  0.000000000  0.000000000
     0.000000000  5.052600000  0.000000000     0.000000000  0.197917904  0.000000000
     0.000000000  0.000000000 14.572700000     0.000000000  0.000000000  0.068621463

  length of vectors


 k-points in units of 2pi/SCALE and weight: C fcc         # System label            
   0.00000000  0.00000000  0.00000000       0.111
   0.06597263  0.00000000  0.00000000       0.222
   0.00000000  0.06597263  0.00000000       0.222
   0.06597263  0.06597263  0.00000000       0.444

 k-points in reciprocal lattice and weights: C fcc         # System label            
   0.00000000  0.00000000  0.00000000       0.111
   0.33333333  0.00000000  0.00000000       0.222
   0.00000000  0.33333333  0.00000000       0.222
   0.33333333  0.33333333  0.00000000       0.444

 position of ions in fractional coordinates (direct lattice) 
   0.00000159  0.00000133  0.19665532
   0.25000000  0.25000000  0.06862000
   0.25000748  0.36331941  0.29855249
   0.25000096  0.00000035  0.13057734
   0.00000229  0.26821094  0.25181124
   0.00000209  0.50000093  0.17957841
   0.25000000  0.75000000  0.06862000
   0.25000650  0.63668348  0.29855214
   0.25000159  0.50000025  0.12140109
   0.00000308  0.73179135  0.25181095
   0.50000217  0.00000114  0.19665558
   0.75000000  0.25000000  0.06862000
   0.74999892  0.36331708  0.29855221
   0.75000069  0.00000037  0.13057734
   0.50000196  0.26821153  0.25181113
   0.50000171  0.50000059  0.17957874
   0.75000000  0.75000000  0.06862000
   0.75000599  0.63668644  0.29855207
   0.75000187  0.50000038  0.12140095
   0.50000261  0.73179179  0.25181108
   0.39214934  0.25000000  0.01612382
   0.10785066  0.25000000  0.01612382
   0.39214934  0.75000000  0.01612382
   0.10785066  0.75000000  0.01612382
   0.89214934  0.25000000  0.01612382
   0.60785066  0.25000000  0.01612382
   0.89214934  0.75000000  0.01612382
   0.60785066  0.75000000  0.01612382

 position of ions in cartesian coordinates  (Angst):
   0.00000806  0.00000671  2.86579898
   1.26315000  1.26315000  0.99997867
   1.26318781  1.83570767  4.35071587
   1.26315487  0.00000177  1.90286436
   0.00001156  1.35516262  3.66956964
   0.00001055  2.52630470  2.61694230
   1.26315000  3.78945000  0.99997867
   1.26318286  3.21690697  4.35071079
   1.26315802  2.52630126  1.76914166
   0.00001555  3.69744897  3.66956542
   2.52631098  0.00000577  2.86580283
   3.78945000  1.26315000  0.99997867
   3.78944453  1.83569587  4.35071180
   3.78945347  0.00000187  1.90286436
   2.52630991  1.35516556  3.66956798
   2.52630866  2.52630298  2.61694709
   3.78945000  3.78945000  0.99997867
   3.78948024  3.21692189  4.35070978
   3.78945944  2.52630192  1.76913964
   2.52631317  3.69745122  3.66956735
   1.98137376  1.26315000  0.23496753
   0.54492624  1.26315000  0.23496753
   1.98137376  3.78945000  0.23496753
   0.54492624  3.78945000  0.23496753
   4.50767376  1.26315000  0.23496753
   3.07122624  1.26315000  0.23496753
   4.50767376  3.78945000  0.23496753
   3.07122624  3.78945000  0.23496753



--------------------------------------------------------------------------------------------------------


 k-point   1 :   0.0000 0.0000 0.0000  plane waves:   19103
 k-point   2 :   0.3333 0.0000 0.0000  plane waves:   19125
 k-point   3 :   0.0000 0.3333 0.0000  plane waves:   19125
 k-point   4 :   0.3333 0.3333 0.0000  plane waves:   19098

 maximum and minimum number of plane-waves per node :     19125    19098

 maximum number of plane-waves:     19125
 maximum index in each direction: 
   IXMAX=   11   IYMAX=   11   IZMAX=   33
   IXMIN=  -11   IYMIN=  -11   IZMIN=  -33


 serial   3D FFT for wavefunctions
 parallel 3D FFT for charge:
    minimum data exchange during FFTs selected (reduces bandwidth)


 total amount of memory used by VASP MPI-rank0    61359. kBytes
=======================================================================

   base      :      30000. kBytes
   nonlr-proj:       2542. kBytes
   fftplans  :       5327. kBytes
   grid      :      13509. kBytes
   one-center:         86. kBytes
   wavefun   :       9895. kBytes

     INWAV:  cpu time      0.0452: real time      0.0452
 Broyden mixing: mesh for mixing (old mesh)
   NGX = 23   NGY = 23   NGZ = 67
  (NGX  = 72   NGY  = 72   NGZ  =216)
  gives a total of  35443 points

 charge density for first step will be calculated from the start-wavefunctions


--------------------------------------------------------------------------------------------------------


 Maximum index for non-local projection operator         1196
 Maximum index for augmentation-charges          559 (set IRDMAX)


--------------------------------------------------------------------------------------------------------


 initial charge from wavefunction
 First call to EWALD:  gamma=   0.246
 Maximum number of real-space cells 4x 4x 2
 Maximum number of reciprocal cells 2x 2x 5

    FEWALD:  cpu time      0.0015: real time      0.0015


--------------------------------------- Ionic step        1  -------------------------------------------




--------------------------------------- Iteration      1(   1)  ---------------------------------------


    POTLOK:  cpu time      0.1062: real time      0.1062
    SETDIJ:  cpu time      0.0032: real time      0.0032
     EDDAV:  cpu time      1.7169: real time      1.7171
 BZINTS: Fermi energy:    0.694107;   88.000000 electrons
         Band energy:-0.712743E+03;  BLOECHL correction:    0.000000
       DOS:  cpu time      0.0012: real time      0.0012
    CHARGE:  cpu time      0.0889: real time      0.0889
    MIXING:  cpu time      0.0043: real time      0.0044
    --------------------------------------------
      LOOP:  cpu time      1.9208: real time      1.9211

 eigenvalue-minimisations  :   424
 total energy-change (2. order) :-0.1954122E+03  (-0.6679312E-05)
 number of electron      88.0000006 magnetization 
 augmentation part        2.0858455 magnetization 

 DIPCOR: dipole corrections for dipol
 direction  3 min pos   146,
 dipolmoment           0.000000      0.000000      0.516514 electrons x Angstroem
 Tr[quadrupol]      -410.466622

 energy correction for charged system         0.000000 eV
 dipol+quadrupol energy correction           -0.064886 eV
 added-field ion interaction          0.057302 eV  (added to PSCEN)


 Broyden mixing:
  rms(total) = 0.68615E-02    rms(broyden)= 0.68612E-02
  rms(prec ) = 0.11381E-01
  weight for this iteration     100.00

 Free energy of the ion-electron system (eV)
  ---------------------------------------------------
  alpha Z        PSCENC =       101.75927155
  Ewald energy   TEWEN  =     11869.04754753
  -Hartree energ DENC   =    -14787.51010356
  -exchange      EXHF   =         0.00000000
  -V(xc)+E(xc)   XCENC  =       304.79146921
  PAW double counting   =      7997.73321872    -8011.48430316
  entropy T*S    EENTRO =         0.00000000
  eigenvalues    EBANDS =      -712.74317961
  atomic energy  EATOM  =      3042.99389965
  Solvation  Ediel_sol  =         0.00000000
  ---------------------------------------------------
  free energy    TOTEN  =      -195.41217967 eV

  energy without entropy =     -195.41217967  energy(sigma->0) =     -195.41217967


--------------------------------------------------------------------------------------------------------




--------------------------------------- Iteration      1(   2)  ---------------------------------------


    POTLOK:  cpu time      0.1091: real time      0.1091
    SETDIJ:  cpu time      0.0033: real time      0.0033
    EDDIAG:  cpu time      0.4159: real time      0.4159
  RMM-DIIS:  cpu time      1.6509: real time      1.6510
    ORTHCH:  cpu time      0.0360: real time      0.0360
 BZINTS: Fermi energy:    0.697388;   88.000000 electrons
         Band energy:-0.712667E+03;  BLOECHL correction:    0.000000
       DOS:  cpu time      0.0012: real time      0.0012
    CHARGE:  cpu time      0.0894: real time      0.0894
    MIXING:  cpu time      0.0040: real time      0.0040
    --------------------------------------------
      LOOP:  cpu time      2.3096: real time      2.3099

 eigenvalue-minimisations  :   509
 total energy-change (2. order) : 0.5026072E-03  (-0.7431866E-04)
 number of electron      88.0000006 magnetization 
 augmentation part        2.0858731 magnetization 

 DIPCOR: dipole corrections for dipol
 direction  3 min pos   146,
 dipolmoment           0.000000      0.000000      0.512301 electrons x Angstroem
 Tr[quadrupol]      -410.468686

 energy correction for charged system         0.000000 eV
 dipol+quadrupol energy correction           -0.063832 eV
 added-field ion interaction          0.056834 eV  (added to PSCEN)


 Broyden mixing:
  rms(total) = 0.37559E-02    rms(broyden)= 0.37558E-02
  rms(prec ) = 0.54121E-02
  weight for this iteration     100.00

 eigenvalues of (default mixing * dielectric matrix)
  average eigenvalue GAMMA=   1.3595
  1.3595

 Free energy of the ion-electron system (eV)
  ---------------------------------------------------
  alpha Z        PSCENC =       101.75985840
  Ewald energy   TEWEN  =     11869.04754753
  -Hartree energ DENC   =    -14787.58923355
  -exchange      EXHF   =         0.00000000
  -V(xc)+E(xc)   XCENC  =       304.79418153
  PAW double counting   =      7997.72749530    -8011.47875962
  entropy T*S    EENTRO =         0.00000000
  eigenvalues    EBANDS =      -712.66666631
  atomic energy  EATOM  =      3042.99389965
  Solvation  Ediel_sol  =         0.00000000
  ---------------------------------------------------
  free energy    TOTEN  =      -195.41167706 eV

  energy without entropy =     -195.41167706  energy(sigma->0) =     -195.41167706


--------------------------------------------------------------------------------------------------------




--------------------------------------- Iteration      1(   3)  ---------------------------------------


    POTLOK:  cpu time      0.1012: real time      0.1012
    SETDIJ:  cpu time      0.0036: real time      0.0036
    EDDIAG:  cpu time      0.4167: real time      0.4168
  RMM-DIIS:  cpu time      1.6881: real time      1.6882
    ORTHCH:  cpu time      0.0362: real time      0.0362
 BZINTS: Fermi energy:    0.696710;   88.000000 electrons
         Band energy:-0.712561E+03;  BLOECHL correction:    0.000000
       DOS:  cpu time      0.0011: real time      0.0011
    --------------------------------------------
      LOOP:  cpu time      2.2470: real time      2.2472

 eigenvalue-minimisations  :   520
 total energy-change (2. order) : 0.8021085E-04  (-0.6080517E-04)
 number of electron      88.0000006 magnetization 
 augmentation part        2.0858731 magnetization 

 DIPCOR: dipole corrections for dipol
 direction  3 min pos   146,
 dipolmoment           0.000000      0.000000      0.509168 electrons x Angstroem
 Tr[quadrupol]      -410.471099

 energy correction for charged system         0.000000 eV
 dipol+quadrupol energy correction           -0.063053 eV
 added-field ion interaction          0.056487 eV  (added to PSCEN)


 Free energy of the ion-electron system (eV)
  ---------------------------------------------------
  alpha Z        PSCENC =       101.76028912
  Ewald energy   TEWEN  =     11869.04754753
  -Hartree energ DENC   =    -14787.69851231
  -exchange      EXHF   =         0.00000000
  -V(xc)+E(xc)   XCENC  =       304.79756304
  PAW double counting   =      7997.72456695    -8011.47621217
  entropy T*S    EENTRO =         0.00000000
  eigenvalues    EBANDS =      -712.56073867
  atomic energy  EATOM  =      3042.99389965
  Solvation  Ediel_sol  =         0.00000000
  ---------------------------------------------------
  free energy    TOTEN  =      -195.41159685 eV

  energy without entropy =     -195.41159685  energy(sigma->0) =     -195.41159685


--------------------------------------------------------------------------------------------------------




 average (electrostatic) potential at core
  the test charge radii are     0.6991  0.5201
  (the norm of the test charge is              1.0000)
       1 -54.8430       2 -53.8546       3 -54.1304       4 -54.9632       5 -54.6731
       6 -54.5752       7 -53.8546       8 -54.1307       9 -54.5147      10 -54.6741
      11 -54.8433      12 -53.8546      13 -54.1300      14 -54.9633      15 -54.6748
      16 -54.5756      17 -53.8546      18 -54.1304      19 -54.5146      20 -54.6746
      21 -38.9388      22 -38.9389      23 -38.9388      24 -38.9389      25 -38.9389
      26 -38.9389      27 -38.9389      28 -38.9389



 E-fermi :   0.6967     XC(G=0):  -5.7265     alpha+bet : -5.9819

 Fermi energy:         0.6967096408

 k-point     1 :       0.0000    0.0000    0.0000
  band No.  band energies     occupation 
      1     -20.3671      2.00000
      2     -18.0631      2.00000
      3     -16.0902      2.00000
      4     -16.0575      2.00000
      5     -15.8109      2.00000
      6     -15.3354      2.00000
      7     -14.3116      2.00000
      8     -14.1833      2.00000
      9     -14.0978      2.00000
     10     -12.1969      2.00000
     11     -11.8576      2.00000
     12     -11.8010      2.00000
     13     -11.5329      2.00000
     14     -11.3012      2.00000
     15     -11.0456      2.00000
     16     -10.1555      2.00000
     17      -9.5995      2.00000
     18      -9.5445      2.00000
     19      -9.5140      2.00000
     20      -8.5797      2.00000
     21      -8.1520      2.00000
     22      -6.8715      2.00000
     23      -6.5481      2.00000
     24      -6.4473      2.00000
     25      -6.2471      2.00000
     26      -6.0108      2.00000
     27      -5.8437      2.00000
     28      -5.4710      2.00000
     29      -5.3536      2.00000
     30      -4.7301      2.00000
     31      -4.5715      2.00000
     32      -4.3788      2.00000
     33      -3.5546      2.00000
     34      -3.2707      2.00000
     35      -2.7059      2.00000
     36      -2.3311      2.00000
     37      -2.1848      2.00000
     38      -2.0313      2.00000
     39      -1.8976      2.00000
     40      -1.6614      2.00000
     41      -1.1250      2.00000
     42       0.0227      2.00000
     43       0.2251      2.00000
     44       0.6509      2.00000
     45       1.9825      0.00000
     46       2.1138      0.00000
     47       3.0474      0.00000
     48       4.7248      0.00000
     49       4.8235      0.00000
     50       5.0761      0.00000
     51       5.1340      0.00000
     52       5.2761      0.00000
     53       5.4430      0.00000
     54       5.9988      0.00000
     55       6.1151      0.00000
     56       6.6406      0.00000
     57       7.3529      0.00000
     58       7.4776      0.00000
     59       7.4821      0.00000
     60       8.0137      0.00000
     61       8.0997      0.00000
     62       8.2973      0.00000
     63       8.3254      0.00000
     64       8.8182      0.00000

 k-point     2 :       0.3333    0.0000    0.0000
  band No.  band energies     occupation 
      1     -19.8621      2.00000
      2     -18.3706      2.00000
      3     -17.5792      2.00000
      4     -16.2201      2.00000
      5     -15.3425      2.00000
      6     -14.8453      2.00000
      7     -14.0113      2.00000
      8     -13.7089      2.00000
      9     -13.6334      2.00000
     10     -13.4343      2.00000
     11     -12.8878      2.00000
     12     -12.3284      2.00000
     13     -11.6388      2.00000
     14     -10.7000      2.00000
     15     -10.0141      2.00000
     16      -9.6957      2.00000
     17      -9.5737      2.00000
     18      -9.0983      2.00000
     19      -7.9785      2.00000
     20      -7.6497      2.00000
     21      -7.3574      2.00000
     22      -7.2659      2.00000
     23      -6.9111      2.00000
     24      -6.6851      2.00000
     25      -6.0827      2.00000
     26      -5.9335      2.00000
     27      -5.7750      2.00000
     28      -5.7298      2.00000
     29      -5.5862      2.00000
     30      -4.4584      2.00000
     31      -4.3011      2.00000
     32      -4.2398      2.00000
     33      -3.9702      2.00000
     34      -3.7862      2.00000
     35      -3.3735      2.00000
     36      -3.3330      2.00000
     37      -2.9734      2.00000
     38      -2.6899      2.00000
     39      -1.9785      2.00000
     40      -1.7619      2.00000
     41      -1.7370      2.00000
     42      -1.2532      2.00000
     43      -0.7480      2.00000
     44       0.4041      2.00000
     45       2.2941      0.00000
     46       2.6421      0.00000
     47       3.0047      0.00000
     48       4.0868      0.00000
     49       5.1535      0.00000
     50       5.5380      0.00000
     51       5.8361      0.00000
     52       6.1788      0.00000
     53       6.2081      0.00000
     54       6.5788      0.00000
     55       6.6164      0.00000
     56       6.7307      0.00000
     57       6.8240      0.00000
     58       6.9960      0.00000
     59       7.5716      0.00000
     60       7.7351      0.00000
     61       7.8033      0.00000
     62       8.0111      0.00000
     63       8.4968      0.00000
     64       8.5738      0.00000

 k-point     3 :       0.0000    0.3333    0.0000
  band No.  band energies     occupation 
      1     -20.0392      2.00000
      2     -18.0973      2.00000
      3     -17.3984      2.00000
      4     -15.7398      2.00000
      5     -15.7205      2.00000
      6     -15.3379      2.00000
      7     -14.3048      2.00000
      8     -13.7769      2.00000
      9     -13.6432      2.00000
     10     -13.6314      2.00000
     11     -13.1082      2.00000
     12     -11.6033      2.00000
     13     -10.6914      2.00000
     14     -10.4079      2.00000
     15      -9.7702      2.00000
     16      -9.7475      2.00000
     17      -9.2469      2.00000
     18      -9.1236      2.00000
     19      -8.8530      2.00000
     20      -8.5436      2.00000
     21      -8.0647      2.00000
     22      -7.7057      2.00000
     23      -6.7928      2.00000
     24      -6.3512      2.00000
     25      -6.1382      2.00000
     26      -5.9329      2.00000
     27      -5.2724      2.00000
     28      -5.2501      2.00000
     29      -5.0574      2.00000
     30      -4.7968      2.00000
     31      -4.5289      2.00000
     32      -4.4735      2.00000
     33      -4.1737      2.00000
     34      -3.9505      2.00000
     35      -3.7104      2.00000
     36      -3.6074      2.00000
     37      -3.2312      2.00000
     38      -3.0431      2.00000
     39      -2.5727      2.00000
     40      -1.3835      2.00000
     41      -0.9309      2.00000
     42       0.3473      2.00000
     43       0.3568      2.00000
     44       0.6748      2.00000
     45       1.9407      0.00000
     46       2.4836      0.00000
     47       2.7352      0.00000
     48       3.9379      0.00000
     49       4.5011      0.00000
     50       5.0119      0.00000
     51       5.1310      0.00000
     52       6.0092      0.00000
     53       6.4302      0.00000
     54       6.7712      0.00000
     55       6.8963      0.00000
     56       7.1744      0.00000
     57       7.4955      0.00000
     58       7.7502      0.00000
     59       7.8559      0.00000
     60       8.0627      0.00000
     61       8.0643      0.00000
     62       8.1647      0.00000
     63       8.3344      0.00000
     64       8.4328      0.00000

 k-point     4 :       0.3333    0.3333    0.0000
  band No.  band energies     occupation 
      1     -19.5357      2.00000
      2     -18.0467      2.00000
      3     -17.6053      2.00000
      4     -16.9200      2.00000
      5     -16.1847      2.00000
      6     -15.5645      2.00000
      7     -14.8729      2.00000
      8     -13.6726      2.00000
      9     -13.1534      2.00000
     10     -12.6402      2.00000
     11     -12.5042      2.00000
     12     -11.3530      2.00000
     13     -11.1902      2.00000
     14     -10.1364      2.00000
     15      -9.8924      2.00000
     16      -9.3355      2.00000
     17      -9.0517      2.00000
     18      -8.6951      2.00000
     19      -8.2871      2.00000
     20      -7.5145      2.00000
     21      -7.3944      2.00000
     22      -7.2598      2.00000
     23      -7.0524      2.00000
     24      -6.6994      2.00000
     25      -6.0387      2.00000
     26      -5.8372      2.00000
     27      -5.7512      2.00000
     28      -5.6877      2.00000
     29      -5.4688      2.00000
     30      -5.1391      2.00000
     31      -4.7911      2.00000
     32      -4.6173      2.00000
     33      -4.3137      2.00000
     34      -4.2253      2.00000
     35      -3.9035      2.00000
     36      -3.5417      2.00000
     37      -3.2292      2.00000
     38      -2.9634      2.00000
     39      -2.7892      2.00000
     40      -2.7019      2.00000
     41      -1.6403      2.00000
     42      -1.2803      2.00000
     43      -0.5029      2.00000
     44       0.5742      2.00000
     45       2.2738      0.00000
     46       2.7419      0.00000
     47       3.1367      0.00000
     48       4.3484      0.00000
     49       4.4169      0.00000
     50       5.2307      0.00000
     51       5.6838      0.00000
     52       6.0387      0.00000
     53       6.2268      0.00000
     54       6.6886      0.00000
     55       6.9041      0.00000
     56       7.2128      0.00000
     57       7.2690      0.00000
     58       7.5525      0.00000
     59       8.1356      0.00000
     60       8.2032      0.00000
     61       8.4050      0.00000
     62       8.5953      0.00000
     63       8.6590      0.00000
     64       8.7731      0.00000


--------------------------------------------------------------------------------------------------------


 soft charge-density along one line, spin component           1
         0         1         2         3         4         5         6         7         8         9
 total charge-density along one line

 pseudopotential strength for first ion, spin component:           1
 10.004  13.298   0.000  -0.001  -0.000  -0.000   0.002   0.000
 13.298  17.677   0.000  -0.001  -0.000  -0.000   0.003   0.000
  0.000   0.000  -4.172   0.000   0.000   8.172  -0.000  -0.000
 -0.001  -0.001   0.000  -4.170   0.000  -0.000   8.169  -0.000
 -0.000  -0.000   0.000   0.000  -4.170  -0.000  -0.000   8.169
 -0.000  -0.000   8.172  -0.000  -0.000 -18.134   0.000   0.000
  0.002   0.003  -0.000   8.169  -0.000   0.000 -18.128   0.000
  0.000   0.000  -0.000  -0.000   8.169   0.000   0.000 -18.128
 total augmentation occupancy for first ion, spin component:           1
  6.625  -2.810   0.000  -0.041   0.000   0.000  -0.011   0.000
 -2.810   1.276   0.000   0.030  -0.000   0.000   0.007  -0.000
  0.000   0.000   1.516   0.000   0.000   0.127   0.000   0.000
 -0.041   0.030   0.000   1.469  -0.000   0.000   0.118  -0.000
  0.000  -0.000   0.000  -0.000   1.488   0.000  -0.000   0.116
 -0.000   0.000   0.127   0.000   0.000   0.012   0.000   0.000
 -0.011   0.007   0.000   0.118  -0.000   0.000   0.011  -0.000
  0.000  -0.000   0.000  -0.000   0.116   0.000  -0.000   0.011


------------------------ aborting loop because EDIFF is reached ----------------------------------------


    CHARGE:  cpu time      0.0876: real time      0.0876
    FORLOC:  cpu time      0.0093: real time      0.0093
    FORNL :  cpu time      0.5111: real time      0.5113
    STRESS:  cpu time      1.5437: real time      1.5438
    FORCOR:  cpu time      0.0918: real time      0.0918
    FORHAR:  cpu time      0.0284: real time      0.0284
    MIXING:  cpu time      0.0042: real time      0.0042
    OFIELD:  cpu time      0.0001: real time      0.0001

  FORCE on cell =-STRESS in cart. coord.  units (eV):
  Direction    XX          YY          ZZ          XY          YZ          ZX
  --------------------------------------------------------------------------------------
  Alpha Z   101.76686   101.76686   101.76686
  Ewald   14220.95632 13963.84583-16315.76361     0.00342    -0.00254    -0.00727
  Hartree 14576.26037 14392.83690-14180.93275     0.00003    -0.00003    -0.00154
  E(xc)    -328.55127  -330.02770  -331.32096    -0.00000    -0.00000    -0.00001
  Local  -29806.43864-29380.91231 29475.06267    -0.00195     0.00137     0.00784
  n-local  -102.50051   -93.15645   -94.92585    -0.05046    -0.00046     0.00028
  augment    -6.20010    -6.09704    -6.29795    -0.00001     0.00001     0.00000
  Kinetic  1413.23123  1347.67193  1352.32578     0.33591     0.00210    -0.00116
  Fock        0.00000     0.00000     0.00000     0.00000     0.00000     0.00000
  -------------------------------------------------------------------------------------
  Total      68.52424    -4.07199    -0.08582     0.00000     0.00000    -0.00185
  in kB     295.11070   -17.53666    -0.36960     0.00000     0.00000    -0.00796
  external pressure =       92.40 kB  Pullay stress =        0.00 kB


 VOLUME and BASIS-vectors are now :
 -----------------------------------------------------------------------------
  energy-cutoff  :      800.00
  volume of cell :      372.02
      direct lattice vectors                 reciprocal lattice vectors
     5.052600000  0.000000000  0.000000000     0.197917904  0.000000000  0.000000000
     0.000000000  5.052600000  0.000000000     0.000000000  0.197917904  0.000000000
     0.000000000  0.000000000 14.572700000     0.000000000  0.000000000  0.068621463

  length of vectors
     5.052600000  5.052600000 14.572700000     0.197917904  0.197917904  0.068621463


 FORCES acting on ions
    electron-ion (+dipol)            ewald-force                    non-local-force                 convergence-correction
 -----------------------------------------------------------------------------------------------
   0.115E-02 -.120E-02 -.144E+03   -.493E-03 0.690E-03 0.145E+03   0.264E-05 0.118E-19 -.693E+00   -.137E-05 -.225E-07 0.897E-03
   0.333E-03 0.250E+02 0.482E+03   -.354E-03 -.259E+02 -.481E+03   0.974E-04 -.482E-01 -.100E+01   0.145E-05 0.876E-03 0.552E-03
   -.105E-02 0.977E+02 -.626E+03   -.767E-02 -.989E+02 0.628E+03   -.196E-03 0.116E+01 -.175E+01   0.875E-05 -.791E-02 0.151E-01
   -.113E-02 -.366E-03 0.197E+03   0.974E-03 -.348E-03 -.197E+03   0.297E-04 -.823E-21 -.634E+00   0.179E-05 -.872E-08 -.408E-02
   -.163E-02 0.959E+02 -.391E+03   0.152E-02 -.974E+02 0.391E+03   0.193E-04 0.143E+01 -.560E+00   -.758E-05 -.808E-02 -.244E-03
   0.435E-04 -.157E-02 0.170E+01   -.778E-03 -.537E-03 0.266E+00   0.272E-04 0.881E-20 -.198E+01   -.641E-05 0.603E-07 -.554E-02
   0.331E-03 -.250E+02 0.482E+03   -.278E-03 0.259E+02 -.481E+03   0.974E-04 0.482E-01 -.100E+01   0.145E-05 -.876E-03 0.552E-03
   -.293E-05 -.977E+02 -.626E+03   -.547E-02 0.989E+02 0.628E+03   -.196E-03 -.116E+01 -.175E+01   0.871E-05 0.791E-02 0.151E-01
   -.655E-03 -.314E-03 0.263E+03   0.106E-02 -.513E-03 -.262E+03   -.431E-04 0.257E-21 -.857E+00   0.242E-05 0.313E-08 -.848E-02
   -.260E-02 -.959E+02 -.391E+03   0.345E-02 0.974E+02 0.391E+03   0.193E-04 -.143E+01 -.560E+00   -.758E-05 0.808E-02 -.244E-03
   0.412E-03 -.103E-02 -.144E+03   -.116E-02 0.373E-03 0.145E+03   0.264E-05 0.118E-19 -.693E+00   -.141E-05 -.192E-07 0.897E-03
   0.333E-03 0.250E+02 0.482E+03   -.340E-03 -.259E+02 -.481E+03   0.974E-04 -.482E-01 -.100E+01   0.145E-05 0.876E-03 0.552E-03
   0.829E-02 0.977E+02 -.626E+03   0.407E-02 -.989E+02 0.628E+03   -.196E-03 0.116E+01 -.175E+01   0.837E-05 -.791E-02 0.151E-01
   -.758E-03 -.385E-03 0.197E+03   0.967E-03 -.349E-03 -.197E+03   0.297E-04 0.738E-21 -.634E+00   0.178E-05 -.891E-08 -.408E-02
   -.122E-02 0.959E+02 -.391E+03   0.656E-03 -.974E+02 0.391E+03   0.193E-04 0.143E+01 -.560E+00   -.758E-05 -.808E-02 -.245E-03
   0.427E-03 -.102E-02 0.169E+01   0.527E-03 0.765E-03 0.264E+00   0.272E-04 -.404E-20 -.198E+01   -.640E-05 0.389E-07 -.554E-02
   0.334E-03 -.250E+02 0.482E+03   -.411E-03 0.259E+02 -.481E+03   0.974E-04 0.482E-01 -.100E+01   0.145E-05 -.876E-03 0.552E-03
   0.442E-03 -.977E+02 -.626E+03   0.429E-03 0.989E+02 0.628E+03   -.196E-03 -.116E+01 -.175E+01   0.868E-05 0.791E-02 0.151E-01
   -.102E-02 -.484E-03 0.263E+03   0.571E-03 -.591E-03 -.262E+03   -.431E-04 -.779E-23 -.857E+00   0.241E-05 0.353E-08 -.848E-02
   -.203E-02 -.959E+02 -.391E+03   0.270E-02 0.974E+02 0.391E+03   0.193E-04 -.143E+01 -.560E+00   -.758E-05 0.808E-02 -.244E-03
   -.177E+02 0.235E+01 0.186E+03   0.212E+02 -.259E+01 -.191E+03   -.364E+01 -.461E-01 0.470E+01   -.114E-02 -.329E-04 0.716E-03
   0.177E+02 0.235E+01 0.186E+03   -.212E+02 -.259E+01 -.191E+03   0.364E+01 -.461E-01 0.470E+01   0.114E-02 -.332E-04 0.716E-03
   -.177E+02 -.235E+01 0.186E+03   0.212E+02 0.259E+01 -.191E+03   -.364E+01 0.461E-01 0.470E+01   -.114E-02 0.329E-04 0.716E-03
   0.177E+02 -.235E+01 0.186E+03   -.212E+02 0.259E+01 -.191E+03   0.364E+01 0.461E-01 0.470E+01   0.114E-02 0.332E-04 0.716E-03
   -.177E+02 0.235E+01 0.186E+03   0.212E+02 -.259E+01 -.191E+03   -.364E+01 -.461E-01 0.470E+01   -.114E-02 -.329E-04 0.716E-03
   0.177E+02 0.235E+01 0.186E+03   -.212E+02 -.259E+01 -.191E+03   0.364E+01 -.461E-01 0.470E+01   0.114E-02 -.332E-04 0.716E-03
   -.177E+02 -.235E+01 0.186E+03   0.212E+02 0.259E+01 -.191E+03   -.364E+01 0.461E-01 0.470E+01   -.114E-02 0.329E-04 0.716E-03
   0.177E+02 -.235E+01 0.186E+03   -.212E+02 0.259E+01 -.191E+03   0.364E+01 0.461E-01 0.470E+01   0.114E-02 0.332E-04 0.716E-03
 -----------------------------------------------------------------------------------------------
   -.860E-04 -.215E-01 -.160E+02   0.107E-13 -.355E-13 -.483E-12   -.297E-03 -.222E-15 0.160E+02   0.198E-05 0.529E-06 0.330E-01


 POSITION                                       TOTAL-FORCE (eV/Angst)
 -----------------------------------------------------------------------------------
      0.00001      0.00001      2.86580        -0.000027     -0.000000     -0.021266
      1.26315      1.26315      0.99998         0.000099     -0.906790     -0.134795
      1.26319      1.83571      4.35072        -0.000416     -0.024844     -0.007865
      1.26315      0.00000      1.90286         0.000072     -0.000000      0.028416
      0.00001      1.35516      3.66957         0.000233     -0.028796      0.041538
      0.00001      2.52630      2.61694         0.000144     -0.000000     -0.026659
      1.26315      3.78945      0.99998         0.000099      0.906790     -0.134795
      1.26318      3.21691      4.35071        -0.000416      0.024844     -0.007865
      1.26316      2.52630      1.76914        -0.000050     -0.000000      0.039060
      0.00002      3.69745      3.66957         0.000233      0.028796      0.041538
      2.52631      0.00001      2.86580        -0.000027     -0.000000     -0.021266
      3.78945      1.26315      0.99998         0.000099     -0.906790     -0.134795
      3.78944      1.83570      4.35071        -0.000416     -0.024844     -0.007865
      3.78945      0.00000      1.90286         0.000072     -0.000000      0.028416
      2.52631      1.35517      3.66957         0.000233     -0.028796      0.041538
      2.52631      2.52630      2.61695         0.000144     -0.000000     -0.026659
      3.78945      3.78945      0.99998         0.000099      0.906790     -0.134795
      3.78948      3.21692      4.35071        -0.000416      0.024844     -0.007865
      3.78946      2.52630      1.76914        -0.000050     -0.000000      0.039060
      2.52631      3.69745      3.66957         0.000233      0.028796      0.041538
      1.98137      1.26315      0.23497        -0.130330     -0.277708      0.045652
      0.54493      1.26315      0.23497         0.130344     -0.277683      0.045695
      1.98137      3.78945      0.23497        -0.130330      0.277708      0.045652
      0.54493      3.78945      0.23497         0.130344      0.277683      0.045695
      4.50767      1.26315      0.23497        -0.130330     -0.277708      0.045652
      3.07123      1.26315      0.23497         0.130344     -0.277683      0.045695
      4.50767      3.78945      0.23497        -0.130330      0.277708      0.045652
      3.07123      3.78945      0.23497         0.130344      0.277683      0.045695
 -----------------------------------------------------------------------------------
    total drift:                               -0.000381     -0.021479      0.020793


--------------------------------------------------------------------------------------------------------



  FREE ENERGIE OF THE ION-ELECTRON SYSTEM (eV)
  ---------------------------------------------------
  free  energy   TOTEN  =      -195.41159685 eV

  energy  without entropy=     -195.41159685  energy(sigma->0) =     -195.41159685



--------------------------------------------------------------------------------------------------------


    POTLOK:  cpu time      0.1031: real time      0.1031


--------------------------------------------------------------------------------------------------------


 writing wavefunctions
     LOOP+:  cpu time      8.9901: real time      9.0065
    4ORBIT:  cpu time      0.0000: real time      0.0000
 BZINTS: Fermi energy:    0.696710;   88.000000 electrons
         Band energy:-0.712561E+03;  BLOECHL correction:    0.000000

 total amount of memory used by VASP MPI-rank0    61359. kBytes
=======================================================================

   base      :      30000. kBytes
   nonlr-proj:       2542. kBytes
   fftplans  :       5327. kBytes
   grid      :      13509. kBytes
   one-center:         86. kBytes
   wavefun   :       9895. kBytes

  
  
 General timing and accounting informations for this job:
 ========================================================
  
                  Total CPU time used (sec):       11.946
                            User time (sec):       10.180
                          System time (sec):        1.767
                         Elapsed time (sec):       12.164
  
                   Maximum memory used (kb):      115112.
                   Average memory used (kb):          N/A
  
                          Minor page faults:        49791
                          Major page faults:            3
                 Voluntary context switches:         1186
