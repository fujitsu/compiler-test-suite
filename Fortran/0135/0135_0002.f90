module m1
use iso_c_binding,only:c_ptr,c_loc
contains
function   s1(x) bind(c)
type (c_ptr)::cp(2),x,s1
value x
target::z
cp=c_loc(z)
x=cp(2)
s1=cp(1)
end function
end
function   s() result(y) 
 use m1
type (c_ptr)::x,y
y= s1(x)
end
 use m1
type (c_ptr)::x,s
x= s()
print *,'pass'
end



