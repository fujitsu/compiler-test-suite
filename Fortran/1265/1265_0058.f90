module mod
integer,parameter:: n = 32
integer:: a(n) = 1
integer:: b(n) = 200
integer:: nn = n

contains
  subroutine test
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = b(1) - b(i)
  end do

  print *,b(1:4)
 
  end subroutine
end module

use mod
call test
end
