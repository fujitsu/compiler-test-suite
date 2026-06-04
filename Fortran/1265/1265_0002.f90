module mod
integer:: n = 4
integer:: a(0:1000) = 1
integer:: b(0:1000) = 2
contains
  subroutine test
  integer:: i
  do i=1,n
    b(i) = a(i)
    b(0) = max(b(i),b(0))
  end do
  print *,b(0:4)
  end subroutine
end module
use mod
call test
end
