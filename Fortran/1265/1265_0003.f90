module mod
integer:: a(1000) = 2
integer:: b(1000) = 1
contains
  subroutine test
  integer:: i
  do i=1,1000
    b(1000) = max(a(i),b(1000))
    a(i) = a(i) + b(i)
  end do
  print *,a(1000)
  end subroutine
end module
use mod
call test
end
