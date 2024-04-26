module m1
  type x
    private
    integer:: x1
  end type
end
module m2
  use m1
  type,extends(x):: y
    private
    integer:: x1
    integer,public:: x2
  end type
end
use m2
type(y):: v
v%x2=1
if (v%x2/=1) print *,101
print *,'pass'
end

