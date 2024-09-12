PROGRAM MAIN
IMPLICIT NONE

TYPE ty
  COMPLEX :: cmp(2)
  CHARACTER(LEN = 5) :: ch
  INTEGER :: jj=10
END TYPE

type, extends(ty)::tn
end type

type tt
class(ty),allocatable :: obj1(:,:)
class(ty),allocatable :: obj2(:,:)
end type

type(tt)::objTT, OBJTS

ALLOCATE(objTT%obj1(3,2))
ALLOCATE(objTS%obj2(4,2))

objTS%obj2 = TRANSPOSE(objTT%obj1)

select type (x => objTS%obj2)
type is (tn)
        print*,"ERROR"
class default
    print*, "pass"
end select
END PROGRAM MAIN
