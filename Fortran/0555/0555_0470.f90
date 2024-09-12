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
    class(*), pointer :: ulimClassPtr
end type

type(ty1), pointer :: ptrTy1
type(con) :: objCon

allocate(ptrTy1)
ptrTy1%i = 1

call sub(ptrTy1)
if(objCon%i .NE. 3) then
    print*,'Fail'
else
    print*,'Pass'
endif

contains
subroutine sub(dmyTy)
class(ty),target :: dmyTy
objCon = con(3, dmyTy)
end subroutine
end program