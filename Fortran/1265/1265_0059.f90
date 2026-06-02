module mod
integer,parameter:: n = 32
integer(8):: a(n) = 1
integer(8):: b(n) = 200
integer(8):: nn = n

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
