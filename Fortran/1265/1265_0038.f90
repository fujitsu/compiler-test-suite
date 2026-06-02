module mod
integer,parameter:: n = 128
real(4):: a(n) = 1
real(4):: b(n) = 200
integer:: nn = n

contains
  subroutine test
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = b(1) - b(i)
  end do

  print *,int(b(1:4))
 
  end subroutine
end module

use mod
call test
end
