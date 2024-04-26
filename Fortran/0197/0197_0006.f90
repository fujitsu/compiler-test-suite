 module mod
 contains
 subroutine sub()
   IMPLICIT NONE
   integer :: arr(10)
   integer,parameter::exp1=lbound(arr,1)
   integer,parameter::exp2(1)=shape(arr)
   integer :: exp2a(1)
   integer,parameter::exp3=size(arr)
   integer,parameter::exp4=ubound(arr,1)
   if (exp1.ne.lbound(arr,1)) print *,'err1'
   exp2a=shape(arr)
   if (exp2(1).ne.exp2a(1)) print *,'err2'
   if (exp3.ne.size(arr)) print *,'err3'
   if (exp4.ne.ubound(arr,1)) print *,'err4'
   end
end

use mod
call sub()
print *,'pass'
end
