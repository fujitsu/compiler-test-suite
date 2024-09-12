module mm
 integer a1,a2,a3,a4
 data a2/-2/
 equivalence (a3,a4)
 contains
   subroutine sub(b)
   integer b,c
   c=b
   a1=b
   a3=c+a2
   b=a2
   end subroutine
end module

use mm
integer b/-1/
call sub(b)
if(a1 /= -1)print*,'ng'
if(a2 /= -2)print*,'ng'
if(a3 /= -3)print*,'ng'
if(a4 /= -3)print*,'ng'
if(b  /= -2)print*,'ng'
print*,'pass'
end
