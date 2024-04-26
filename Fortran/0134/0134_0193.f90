module m1
contains
function   s(x) bind(c)
 interface 
   function x(a) bind(c)
   end function
 end interface
 a=0.1
 s=x(a)
end function
end
subroutine s1
use m1
interface 
   function z(a) bind(c)
   end function
end interface
intrinsic sin
  
r=s(z)
if (abs(r-2.1)>0.0001)print *,101,r
end
call s1
print *,'pass'
end
   
   function z(a) bind(c)
   z=a+2
   end function
