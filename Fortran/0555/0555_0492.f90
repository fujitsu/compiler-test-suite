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

type(con) :: objCon

call sub(objCon)
if(associated(objCon%ulimClassPtr) .EQV. .False.) then
    print*,'Fail'
else
    print*,'Pass'
endif

contains
subroutine sub(conDmy)
type(con) :: conDmy
conDmy = con(3, funPoly())
end subroutine
function funPoly()
    class(ty), pointer :: funPoly(:)
    allocate(ty1::funPoly(3))
    funPoly%i = 1
end function
end program
