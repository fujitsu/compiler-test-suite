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

subroutine s1
use typeDef
type con
    integer (kind=8) :: i
    class(*), pointer :: ulimClassPtr(:)=>null()
end type

type(ty1), target :: tarTy1(3)
type(con) :: objCon

tarTy1%i = 1

if(associated(objCon%ulimClassPtr) ) then
    print*,'Fail'
endif
end
print*,'pass'

end program
