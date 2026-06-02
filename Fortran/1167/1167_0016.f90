module m1
  type x
    integer::x1=1
  end type
end
module m2
 use m1
 type(x)::v
 private
 public::v
end
use m2
if (v%x1/=1) print *,201  !!!!!
print *,'sngg937q : pass'
end
