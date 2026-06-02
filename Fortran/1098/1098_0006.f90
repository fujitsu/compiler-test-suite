module m1
  type x
    integer::x1
  end type
  interface 
    module subroutine s1(d)
    type(x)::d
    end
  end interface
end

submodule (m1) smod
contains
    module procedure s1
    type x
    integer::x2
    integer::x1=2
    end type
    type(x)::e
if (d%x1/=100) print *,201
if (e%x1/=2) print *,202
    end
end

use m1
    type(x)::a
a%x1=100
call s1(a)
print *,'sngg223h : pass'
end

