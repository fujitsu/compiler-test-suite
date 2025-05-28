module m1
integer(8),save:: x2(-3:3)=0
contains
subroutine chk(x,n)
integer(8):: x(-3:3)
do k=2,-3,-1
if (x(3)/=x(k) .and. x(k)/=0) then
   write(1,*)201,k,n
   write(1,'(z16.16,x,z16.16)')x(3),x(k)
endif
end do
end subroutine
end
subroutine s01(k)
use m1
integer a1(max(k,10000))
if (k==0 .or. k==5 .or. k==6) return
block 
integer a2(max(k,10000))
x2(k)=loc(a2)
a2(1)=1
end block
end

use m1
do k=3,-3,-1
call s01(k)
end do
call chk(x2,2)
print *,'pass'
end
