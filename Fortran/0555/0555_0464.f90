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
    type(ty1), pointer :: ptrTy1
end type

type(con) :: objCon
type(ty3) :: ptrTy3
allocate(ptrTy3%ptrTy1)

ptrTy3%ptrTy1%i = 1;
ptrTy3%i = 5;
objCon = con(ptrTy3%i, ptrTy3%ptrTy1)
if(sizeof(objCon%ulimClassPtr) .NE. 32) then
    print*,'Fail'
else
    print*,'Pass'
end if
end program
