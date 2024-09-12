module m1
  type t
    integer y
  contains
    procedure, pass(b) :: prc=>p1
    generic :: operator(.USERDEFINEMULTIPLICATOPNOPERATOR.) => prc
  end type
contains
  integer function p1(b,a)
    integer, intent (in) :: a
    class(t),intent(in) :: b
    p1 = b%y * a
  end function

  subroutine sub()
  type(t) :: objt1
  integer :: res, val
  objt1%y = 2
  val = 3
  res = objt1 .USERDEFINEMULTIPLICATOPNOPERATOR. val
  if(2*3 .NE. res ) print*, 'Error'
  print* ,'pass'
  end subroutine 
end module

use m1
call sub()
end
