
module mod
  integer(kind=8),target :: t1 = 5
  integer(kind=8),target :: t2 = 10
  integer(kind=8),target :: t3 = 15
  integer(kind=8),pointer :: p1 => t1
end module mod

use mod
  integer(kind=8),pointer :: p2 => t2

  print *, p1
  print *, p2
  call sub
end program

subroutine sub
  use mod
  integer(kind=8),pointer :: pp => t3

  print *, pp
end subroutine sub
