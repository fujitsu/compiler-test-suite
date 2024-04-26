module m
  interface
    module subroutine s(a,n)
      integer::a((n+2)*4)
    end subroutine
  end interface
end

submodule(m)submod
contains
  module subroutine s(a,n)
    integer::a(4*(2+n))
    if (size(a) /= 40) print *,1
  end subroutine
end


use m
integer :: a(40)
call s(a,8)
print *,'pass'
end
