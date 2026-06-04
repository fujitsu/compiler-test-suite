module mod
integer,parameter:: n = 128
real(4):: a(n) = 1
real(4):: b(n) = 200
logical:: m(n) = .true.
integer:: nn = n

contains
  subroutine test
  integer:: i

  do i=1,nn
    b(i) = a(i)
    if (m(i)) then
    b(1) = b(i) + b(1)
    endif
  end do

  print *,int(b(1:4))
 
  end subroutine
end module

use mod
call test
end
