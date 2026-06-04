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

CLASS(*), ALLOCATABLE:: src
type z
CLASS(*), POINTER:: ptr
end type
type(z)::v


allocate(base::src, STAT=err)

if( err .EQ. 0 ) then 
else
    print *, "ALLOCATION failure to src"
endif 

allocate(v%ptr, SOURCE=src, STAT = err)
if( err .EQ.  0 ) then 
else
    print *, "ALLOCATION failure to ptr"
endif 

print *,'sngg142q : pass'
END PROGRAM
