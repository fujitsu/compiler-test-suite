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

character(:), ALLOCATABLE:: src
type z
character(:), allocatable:: ptr
end type
type(z)::v


allocate(src, STAT=err,source='12')

if( err .EQ. 0 ) then 
else
    print *, "ALLOCATION failure to src"
endif 

allocate(v%ptr, SOURCE=src, STAT = err)
if( err .EQ.  0 ) then 
else
    print *, "ALLOCATION failure to ptr"
endif 
     if (v%ptr/='12') print *,7001

print *,'sngg147q : pass'
END 
