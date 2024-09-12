module m1
  type t
    integer y
  contains
    procedure, pass(b) :: p1
    generic :: operator(.AND.) => p1
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
end module

use m1
type(t) :: objt1
type(t2) :: objt2
objt1%y = 5 
objt2%x = 2
if(objt1 .AND. objt2 ) then 
print*, 'pass'
else 
print*, 'Error'
endif
end
