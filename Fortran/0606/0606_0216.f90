module m1
  type t
    integer y
  contains
    procedure, pass(a) ::  prc1 =>p1
    generic :: operator(+) => prc1
  end type

  type ,extends(t) :: t2
    integer x
  contains
    procedure , pass(a) ::  prc1 =>p4
    generic :: operator(+) => prc1
  end type

contains

  integer function p1(b, a )
    class(t),intent(in) :: a
    integer, intent(in)  :: b
    p1 = a%y + b
    print*, 'Base Version p1 OPERATOR(+)  call'
  end function

  integer function p4(b,a)
    class(t2),intent(in) :: a
    integer,intent(in)  :: b
    p4 = a%y + b
  end function
end

use m1
integer :: val = 20
call sub(val + fun())
contains 
subroutine sub(dum)
integer :: dum 
print*, 'dum  = ', dum
if(dum .NE. 40 ) print*, 'Error'
print*,'pass'
end subroutine 

type (t2) function fun()
fun%y=20
fun%x=20
end function

end
