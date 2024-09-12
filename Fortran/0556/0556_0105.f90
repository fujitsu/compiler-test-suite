program test

type ty1
integer :: i =2
end type 

type,  extends(ty1) ::ty2
integer :: j =3
end type

type(ty2) :: act1

call sub (act1)
contains 
subroutine sub(dummy1)
class(ty1) :: dummy1
print*,dummy1%i,'pass'
end subroutine
end
