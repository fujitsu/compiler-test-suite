module m1
  type t
    integer y
  contains
    procedure, pass(b) :: p1
    generic :: operator(/) => p1
  end type
contains
  integer function p1(a, b)
    integer, intent(in) :: a
    class(t),intent(in) :: b
    p1 = a/b%y
  end function

  subroutine sub()
  type(t) :: objt1
  integer :: res, val
  objt1%y = 5
  val = 15
  res = val/objt1 
  if(3 .NE. res ) print*, 'Error'
  print* ,'pass'
  end subroutine 
end module

use m1
call sub()
end
