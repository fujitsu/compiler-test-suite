module m
 common/com/k
 !$omp threadprivate(/com/)
 interface
  module subroutine msub
  end subroutine
 end interface
end 

submodule(m)smod
 common/com/i
 !$omp threadprivate(/com/)
contains
 module subroutine msub
  i=1
  call sub
 end subroutine
 subroutine sub
  if (i/=1) print *,101
  i=2
 end subroutine
end

use m
common/com/j
!$omp threadprivate(/com/)
call msub
if (j/=2) print *,102,j
print *,'pass'
end
