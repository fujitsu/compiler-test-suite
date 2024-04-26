module m
  interface
    module subroutine s(a,n)
      integer::a(n+2)
    end subroutine
  end interface
end

submodule(m)submod
contains
  module subroutine s(a,n)
    integer::a(n+1+1)
    print *,'pass'
  end subroutine
end

use m
call s([1,2,3],1)
end
