program test

type ty1
integer :: i 
end type 

type,  extends(ty1) ::ty2
integer :: j 
end type

print*,'pass'
call sub (fun())

contains 
subroutine sub(dummy1)
class(ty1), pointer :: dummy1
allocate(ty1::dummy1)
end subroutine

function fun()
class(ty1), pointer :: fun 
allocate(ty2 :: fun)
end function

end
