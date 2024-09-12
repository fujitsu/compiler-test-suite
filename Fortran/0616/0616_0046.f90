module m1
  type base
   integer:: x1
   integer,private:: x2=2
  end type
end
use m1
  type,extends(base):: ex
    integer:: y1
    integer:: x2
  end type
type(ex)::v
v%x2=1
if (v%x2/=1)print *,101
print *,'pass'
end
