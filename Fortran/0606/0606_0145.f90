module m1
  type t
    real y
  contains
    procedure, pass(b) :: prc=>p1
    generic :: operator(==) => prc
  end type
contains
   logical function p1(a, b)
    real, intent (in) :: a
    class(t),intent(in) :: b
    p1 = b%y == a
  end function
end module

use m1
call sub()
contains 
subroutine sub()
type(t) :: objt1
real :: val
objt1%y = 12.50 
val = 12.50
if(val == objt1 ) then 
 print*, 'pass'
else 
 print*, 'Error'
endif 
end subroutine
end
