module m
 integer,allocatable::a
contains
 subroutine sub
  allocate(a)
  call sub2
 end subroutine
 subroutine sub2
  deallocate(a)
 end subroutine
end

use m
call sub
allocate(a)
print *,'pass'
end
