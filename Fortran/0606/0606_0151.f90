module m1
  type t
    integer y
  contains
    procedure, pass(b) :: p1
    generic :: operator(.AND.) => p1
    procedure, pass(b) :: p2
    generic :: operator(.EQV.) => p2
  end type

type t2
    integer x
end type

contains
  logical function p1(b,a)
    class(t2),intent(in) :: a
    class(t),intent(in) :: b
    p1 = b%y > a%x
  end function

  logical function p2(b,a)
    class(t2),intent(in) :: a
    class(t),intent(in) :: b
    p2 = b%y .EQ. a%x
  end function

end module

use m1
call sub()
contains 
subroutine sub()
type(t) :: objt1
type(t2) :: objt2
objt1%y = 5
objt2%x = 5 
if(objt1 .EQV. objt2 )then
print*, 'pass'
else
print*, 'Error'
endif
end subroutine 
end
