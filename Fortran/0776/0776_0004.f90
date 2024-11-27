module m
procedure(logical),pointer::aaa
integer,public:: c=2
private
end module
function aaa() result(a)
use m
a=1
if (c/=2) print *,201
end function
if (abs(aaa()-1)>0.0001) print *,101
print *,'pass'
end
