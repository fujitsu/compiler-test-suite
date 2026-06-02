module m
  bind(c)::a
  !$omp threadprivate(a)
  interface
    module subroutine sub
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
    integer :: omp_get_thread_num
    a=omp_get_thread_num()
  end procedure
end

use m
print *,'pass'
end
