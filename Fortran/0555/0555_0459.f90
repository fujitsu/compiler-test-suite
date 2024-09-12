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

type ty3
    integer(kind=8) ::i
    type(ty1) :: tarTy1(3)
end type

type(con) :: objCon
type(ty3), target :: tarTy3

tarTy3%tarTy1%i = 1;
tarTy3%i = 5;
objCon = con(tarTy3%i, tarTy3%tarTy1(2))
if(sizeof(objCon%ulimClassPtr) .NE. 32) then
    print*,'Fail'
else
    print*,'Pass'
end if
end program