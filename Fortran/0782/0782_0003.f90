module m
  interface
    module subroutine s(a,n)
      integer :: n
      !$omp threadprivate(n)
      integer :: a(n)
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure s
  end procedure
end

use m
end
