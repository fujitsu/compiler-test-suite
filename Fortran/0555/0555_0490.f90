module typeDef
    implicit none
    type ty
        integer(kind=8) :: i = 1
        integer(kind=8) :: ii = 2
    end type
    type, extends(ty)   :: ty1
        integer(kind=8) :: j = 3
        integer(kind=8) :: jj = 4
    end type
    type, extends(ty1)  :: ty2
        integer(kind=8) :: k  = 5
        integer(kind=8) :: kk = 6
    end type
end module

program main
use typeDef
type con
    integer (kind=8) :: i
    class(*), pointer :: ulimClassPtr(:)
end type

class(ty), pointer :: ptrTy1(:)
type(con) :: objCon


allocate(ptrTy1(3))
call sub(ptrTy1)
if(associated(objCon%ulimClassPtr) .EQV. .False.) then
    print*,'Fail'
else
    print*,'Pass'
endif

contains
subroutine sub(dmyTy)
class(ty), pointer :: dmyTy(:)
objCon = con(3, dmyTy)
end subroutine
end program
