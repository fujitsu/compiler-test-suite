INTERFACE GEN
 SUBROUTINE S1 (J, PI)
   INTEGER J
   INTEGER, allocatable :: PI
 END SUBROUTINE S1
 SUBROUTINE S2 (K, PR)
   INTEGER K
   REAL, allocatable :: PR
 END SUBROUTINE S2
END INTERFACE
 REAL, allocatable :: REAL_PTR
 INTEGER, allocatable :: I_PTR
 CALL GEN (7, NULL (REAL_PTR) ) 
 CALL GEN (7, NULL (I_PTR) ) 
 CALL S2  (7, NULL (REAL_PTR) ) 
 CALL S1  (7, NULL (I_PTR) ) 
rewind 1
read(1,*) K
if (k/=2) print *,701
read(1,*) K
if (k/=1) print *,702
print *,'pass'
end
 SUBROUTINE S1 (J, PI)
   INTEGER J
   INTEGER, allocatable :: PI
write(1,*) 1
if (allocated(PI)) print *,201
if (J/=7) print *,301
 END SUBROUTINE S1
 SUBROUTINE S2 (K, PR)
   INTEGER K
   REAL, allocatable :: PR
if (allocated(PR)) print *,202
if (K/=7) print *,302
write(1,*) 2
 END SUBROUTINE S2
