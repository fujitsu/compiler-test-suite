module mod
integer,parameter:: n = 65
integer(1):: a(n) = 1
integer(1):: b(n) = 20
integer:: nn = n

contains
  subroutine test
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = b(i) * b(1)
  end do

  print *,b(1:4)
 
  end subroutine
end module

use mod
call test
end
