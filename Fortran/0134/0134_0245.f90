module m
type,private::x
  integer::x1
end type
  type(x)::v
contains
  function s() result(d)
  type(x)::d
    d=x(1)
  end function
end
use m
v= s()
if (v%x1/=1)print *,101,v%x1
print *,'pass'
end

