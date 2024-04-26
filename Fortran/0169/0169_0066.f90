module m
 integer,allocatable::a
 interface
  module subroutine msub
  end subroutine
 end interface
end 

submodule(m)smod
contains
 module subroutine msub
  allocate(a)
  a=10
  call sub
 end subroutine
 subroutine sub
  if (a/=10) print *,101
  deallocate(a)
 end subroutine
end

use m
call msub
if (allocated(a)) print *,102
print *,'pass'
end
