interface
 function func1() result(rst)
  integer :: rst
 end function
 subroutine sub(pip)
  procedure(integer),pointer :: pip
 end subroutine
end interface

procedure(func1),pointer :: pip
type ty1
 procedure(sub),pointer,nopass :: pp
end type
type(ty1) :: tt

integer   :: i

tt=ty1(sub)

pip => func1

call tt%pp(pip)

print *,'pass'

end

subroutine sub(pip)
 procedure(integer),pointer :: pip
 integer :: i
 i = pip()
end subroutine

function func1() result(rst)
 integer :: rst
 rst = 1
end function
