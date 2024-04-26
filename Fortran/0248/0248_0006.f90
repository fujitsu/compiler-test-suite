PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1=3.1
  INTEGER(KIND=8) ::int1=2
END TYPE

TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2=4
  REAL(KIND=8) ::real2=5.8
END TYPE 

CLASS(*),POINTER :: ptr_1(:)
CLASS(*),ALLOCATABLE:: ptr_2(:)

allocate(deriv:: ptr_1(10))
allocate(ptr_2, mold = ptr_1(4:8))

select type(aa=>ptr_2)
type is(deriv)
 if(size(aa)==5) print*,'pass'
 if(sizeof(aa)/=32*5) print*,205,sizeof(aa)
class default
 print*,101
end select

END PROGRAM MAIN
