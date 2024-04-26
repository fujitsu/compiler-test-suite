module mod0
contains
 function px6(x1) result(r)
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   character(2)::r
   if (x1(2)/='12')print *,1
   r=x1(2)
   if (r/='12')print *,2
 end function
end
use mod0
   interface 
     function x2(i) result(r)
      character(i),pointer::r
     end function
   end interface
if (px6(x2)/='12')print *,3
print *,'pass'
end
     function x2(i) result(r)
      character(i),pointer::r
      allocate(r)
      if (len(r)/=2)print *,3
      r='12'
     end function
