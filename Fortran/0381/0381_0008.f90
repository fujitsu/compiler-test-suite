module m1
use iso_c_binding
contains
function   s(x) 
 type(c_funptr)::x
 interface 
   function z(a) bind(c)
   end function
 end interface
 procedure(z),pointer:: xx
 call c_f_procpointer(x,xx)
 a=0.1
 s=xx(a)
end function
end
subroutine s1
use m1
interface 
   function z(a) bind(c)
   end function
end interface
 intrinsic sin
 procedure(z),pointer:: xx
 procedure(cos),pointer:: zz
 type(c_funptr)::x
 xx=>z
 x=c_funloc(xx)
r=s(x)
if (abs(r-2.1)>0.0001)print *,101,r

 zz=>sin
r=zz(.1)
if (abs(r-sin(.1))>0.0001)print *,102,r
end
call s1
print *,'pass'
end

   function z(a) bind(c)
   z=a+2
   end function
