module mod1
integer,parameter:: n = 33
integer(2):: a(n) = 0
integer(2):: b(n) = 1
integer:: nn = n

contains
  subroutine test1
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = ior(b(i), b(1))
  end do

  print *,b(1:4)
 
  end subroutine
end module

module mod2
integer,parameter:: n = 33
integer(2):: a(n) = 1
integer(2):: b(n) = 0
integer:: nn = n

contains
  subroutine test2
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = ior(b(i), b(1))
  end do

  print *,b(1:4)
 
  end subroutine
end module

use mod1
use mod2
call test1
call test2
end

