module mod
integer:: n = 4
integer:: a(1000) = 1
integer:: b(1000) = 2
contains
  subroutine test
  integer:: i
  do i=1,n
    b(i) = a(i)
    b(1) = max(b(i),b(1))
  end do
  print *,b(1:4)
  end subroutine
end module
use mod
call test
end
