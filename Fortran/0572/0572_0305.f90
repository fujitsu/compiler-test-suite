module mod1
interface
 subroutine s0c(d) bind(c)
  integer::d(..)
 end subroutine
end interface
end
use mod1
integer::x(2:4)
call sub1(x)
contains
subroutine sub1(y)
integer::y(..)
call s0c(y)
end subroutine sub1
end
subroutine s0c(d) bind(c)
  integer::d(..)
  if(rank(d) .ne. 1)print*,"101"
  print*,"PASS"
end subroutine
