PROGRAM MAIN

IMPLICIT NONE
integer :: err 

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

CLASS(*), POINTER:: ptr
CLASS(*), ALLOCATABLE:: src


allocate(base::src, STAT=err)

if( err .EQ. 0 ) then 
   print *, "ALLOCATION success to src"
else
    print *, "ALLOCATION failure to src"
endif 

allocate(ptr, SOURCE=src, STAT = err)
if( err .EQ.  0 ) then 
    print *, "ALLOCATION success to ptr"
else
    print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM
