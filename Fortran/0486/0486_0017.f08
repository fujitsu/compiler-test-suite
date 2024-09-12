INTERFACE GEN
 SUBROUTINE S1 (J, PI)
   INTEGER J
   INTEGER, POINTER :: PI
 END SUBROUTINE S1
 SUBROUTINE S2 (K, PR)
   INTEGER K
   REAL, POINTER :: PR
 END SUBROUTINE S2
END INTERFACE
 REAL, POINTER :: REAL_PTR
 INTEGER, POINTER :: I_PTR
 CALL GEN (7, NULL (REAL_PTR) ) 
 CALL GEN (7, NULL (I_PTR) ) 
rewind 1
read(1,*) K
if (k/=2) print *,701
read(1,*) K
if (k/=1) print *,702
print *,'pass'
end
 SUBROUTINE S1 (J, PI)
   INTEGER J
   INTEGER, POINTER :: PI
write(1,*) 1
if (associated(PI)) print *,201
if (J/=7) print *,301
 END SUBROUTINE S1
 SUBROUTINE S2 (K, PR)
   INTEGER K
   REAL, POINTER :: PR
if (associated(PR)) print *,202
if (K/=7) print *,302
write(1,*) 2
 END SUBROUTINE S2
