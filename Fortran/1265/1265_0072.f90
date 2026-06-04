module mod
integer,parameter:: n = 32
logical(1):: a(n) = .true.
logical(1):: b(n) = .false.
integer:: nn = n

contains
  subroutine test
  integer:: i

  do i=1,nn
    b(i) = a(i)
    b(1) = b(i) .or. b(1)
  end do

  print *,b(1:4)
 
  end subroutine
end module

use mod
call test
end
