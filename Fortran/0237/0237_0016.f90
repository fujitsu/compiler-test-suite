module mod
  type str
    integer :: i
  end type
end module

subroutine sub(pas)
  use mod
  type(str) :: pas(5:14)
end subroutine

use mod
type(str) :: pas(10)
pas%i = (/1,2,3,4,5,6,7,8,9,10/)
call sub(pas)
  print *,'pass'
end
