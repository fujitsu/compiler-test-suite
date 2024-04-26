module m1
  type x1
    integer::y1
  end type
  type,extends(x1)::x2
    integer::y2
  end type
end
use m1,only:z1=>x1,x2
type(x2)::v
v%x1=z1(1)
if (v%x1%y1/=1)print *,2001
print *,'pass'
end
