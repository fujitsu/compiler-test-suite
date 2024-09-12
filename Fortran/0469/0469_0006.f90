module m1
  implicit none
  interface swap
    module procedure asub,psub
  end interface
  contains
  subroutine asub(d1,d2)
  integer,allocatable :: d1,d2
  end subroutine
  subroutine psub(d1,d2)
  integer,pointer :: d1,d2
  end subroutine
end module

use m1
integer,allocatable :: i,j
integer,pointer :: p,q
Allocate(i,j)
Allocate(p,q)
call swap(i,j)
call swap(p,q)
print *,'pass'
end
