module m1
  type base
    integer::x1=1
  end type
end
module m2
  type base
    integer::x1=2
  end type
  private::base
end
module m3
use m1
use m2
end
use m3
type,extends(base)::ext
  integer::y
end type
type(ext)::var
if (var%x1/=1) print *,1010
print *,'pass'
end
