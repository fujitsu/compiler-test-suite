module m1
  type base
    integer::x1=1
  end type
  private::base
end
module m2
  type base
    integer::x1=2
  end type
end
use m1
use m2
type,extends(base)::ext
  integer::y
end type
type(ext)::var
if (var%x1/=2) print *,1010
print *,'pass'
end

