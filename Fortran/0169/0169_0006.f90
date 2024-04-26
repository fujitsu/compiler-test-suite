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
    integer::a(2+n)
    if (size(a) /=12) print *,1
  end subroutine
end

use m
integer::a(12)
call s(a,10)
print *,'pass'
end
