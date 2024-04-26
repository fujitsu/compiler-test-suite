module mod0
contains
 function px6(x1) result(r)
   interface 
     function x1(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
   character(4)::r
   if (x1(2)/='1234')print *,1
   r=x1(2)
   if (r/='1234')print *,2
 end function
end
use mod0
   interface 
     function x2(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
if (px6(x2)/='1234')print *,3
print *,'pass'
end
     function x2(i) result(r)
      character(i+i),pointer::r
      allocate(r)
      if (len(r)/=4)print *,3,len(r)
      r='1234'
     end function
