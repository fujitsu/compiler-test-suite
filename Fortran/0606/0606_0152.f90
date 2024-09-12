module m1
  type t
    integer y
  contains
    procedure, pass(b) :: p1
    generic :: operator(.LT.) => p1
    procedure, pass(b) :: p2
    generic :: operator(.NEQV.) => p2
  end type

type t2
    integer x
end type

contains
  logical function p1(b,a)
    class(t2),intent(in) :: a
    class(t),intent(in) :: b
    p1 = b%y < a%x
  end function

  logical function p2(b,a)
    class(t2),intent(in) :: a
    class(t),intent(in) :: b
    p2 = b .LT. a
  end function

  subroutine sub()
  type(t) :: objt1
  type(t2) :: objt2
  objt1%y = 4
  objt2%x = 5
  if(objt1 .NEQV. objt2 )then
  print*, 'pass'
  else
  print*, 'Error'
  endif
  end subroutine

end module

use m1
call sub()
end
