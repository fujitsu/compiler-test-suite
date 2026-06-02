module mod
integer,parameter:: n = 128
#if defined(__aarch64__)
complex(2):: a(n) = (1,1)
complex(2):: b(n) = (200,200)
#else
complex(4):: a(n) = (1,1)
complex(4):: b(n) = (200,200)
#endif
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
