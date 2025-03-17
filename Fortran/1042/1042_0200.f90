module m1
type a
 sequence
 integer,dimension(1000)::a1
end type
contains
function f() result(res)
type (a)::res
res%a1=1
end function
end 
use m1
type (a) :: var
var= f()
if (any(var%a1/=1))write(6,*) "NG"
print *,'pass'
end
