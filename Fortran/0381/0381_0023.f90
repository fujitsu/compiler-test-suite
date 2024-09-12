module m1
use iso_c_binding
contains
function   s(x) bind(c)
 type(c_ptr)::x
 pointer:: xx
 call c_f_pointer(x,xx)
 s=xx
end function
end
subroutine s1
use m1
 target ::z
 pointer:: xx,yy
 type(c_ptr)::x
 z=2.0
 xx=>z
 x=c_loc(xx)
 call c_f_pointer(x,yy)
 if (abs(yy-2.)>0.001)print *,101
r=s(x)
if (abs(r-2.)>0.0001)print *,102,r
end
call s1
print *,'pass'
end
