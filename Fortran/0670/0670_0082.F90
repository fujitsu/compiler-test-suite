#define e eeeee
module m
 interface operator(.e.)
   module procedure ir,rr
 end interface
contains
   function ir(k1,k2)
     intent(in)::k1,k2
     ir=k1+k2
   end function
   function rr(k1,k2)
     real,intent(in)::k1,k2
     rr=k1+k2
   end function
end
use m
if((1.e.2)/=3)print *,'error-1'
if(abs((1..e..2)-1.2)>0.001)print *,'error-2'
print *,'pass'
end

