PROGRAM MAIN

IMPLICIT NONE
integer :: err  

TYPE base
  REAL(KIND=8) ::real1 = 0
  INTEGER(KIND=8) ::int1 = 0
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2 = 0
  REAL(KIND=8) ::real2  = 0
END TYPE 

CLASS(*), POINTER:: ptr(:)
CLASS(*), ALLOCATABLE:: src(:)
type(base) :: obj


allocate(src(10), SOURCE = obj, STAT=err)

if( err .EQ. 0 ) then 
   print *, "ALLOCATION success to src"
else
    print *, "ALLOCATION failure to src"
endif 

allocate(ptr, SOURCE=src, STAT = err)
if( err .EQ. 0 ) then 
    print *, "ALLOCATION success to ptr"
else
    print *, "ALLOCATION failure to ptr"
endif 

END PROGRAM
