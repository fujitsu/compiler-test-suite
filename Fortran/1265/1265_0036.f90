module mod
integer,parameter:: n = 8
real(8):: a(n) = 2
real(8):: b(n) = -1
integer:: nn = n

contains
  subroutine test
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = b(i) * b(1)
  end do

  print *,int(b(1:4))

  end subroutine
end module

use mod
call test
end
