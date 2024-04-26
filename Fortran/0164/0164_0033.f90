module m
procedure(logical),pointer::aaa
integer,public:: c=2
end module
function f() result(a)
use m,only:c
integer:: aaa=1
a=1
if (c/=2) print *,201
if (aaa/=1) print *,202
end function
if (abs(f()-1)>0.0001) print *,101
print *,'pass'
end
