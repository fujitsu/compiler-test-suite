module mod
integer,parameter:: n = 128
#if defined(__aarch64__)
real(2):: a(n) = 1
real(2):: b(n) = 200
#else
real(4):: a(n) = 1
real(4):: b(n) = 200
#endif
integer:: nn = n

contains
  subroutine test
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = max(b(i) , b(1))
  end do

  print *,int(b(1:4))
 
  end subroutine
end module

use mod
call test
end
