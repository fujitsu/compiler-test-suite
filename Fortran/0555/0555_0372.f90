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
implicit none
type con
    class(ty), pointer :: ty_class
    integer :: i
end type

type(con) :: obj
NULLIFY(obj%ty_class)
obj = con(NULL(), 4)
if(obj%i .NE. 4) then
    print*,'Fail'
else
    print*,'Pass'
end if 
end program 
