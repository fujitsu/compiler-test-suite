module mod
implicit none
integer:: nn = 1
integer:: a(1000) = 1
integer:: b(1000) = 2
contains
  subroutine test
  integer:: i
  do i=4,nn,-1
    b(i) = a(i)
    b(4) = max(b(i),b(4))
  end do
  print *,b(1:4)
  end subroutine
end module
use mod
call test
end
