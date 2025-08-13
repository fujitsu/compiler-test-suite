module m1
integer(8),save:: x1(-3:3)=0
integer(8),save:: x2(-3:3)=0
integer(8),save:: x3(-3:3)=0
contains
subroutine chk(x,n)
integer(8):: x(-3:3)
do k=2,-3,-1
if (x(3)/=x(k) .and. x(k)/=0) then
   write(8,*)201,k,n
   write(8,'(z16.16,x,z16.16)')x(3),x(k)
endif
end do
end subroutine
end
subroutine s01(k)
use m1
integer a1(max(k,10000))
if (k==0 .or. k==5 .or. k==6) return
x1(k)=loc(a1)
block 
integer a2(max(k,10000))
x2(k)=loc(a2)
a2(1)=1
if (a2(1)/=1) print *,101
backspace(k,err=1001)
if (k<0) print *,'error-1'
end block
1001 continue
end
subroutine s02(k)
use m1
integer a1(max(k,10000))
if (k==0 .or. k==5 .or. k==6) return
x1(k)=loc(a1)
block 
integer a2(max(k,10000))
x2(k)=loc(a2)
a2(1)=1
if (a2(1)/=1) print *,102
block 
integer a3(max(k,10000))
x3(k)=loc(a3)
a3(1)=1
if (a3(1)/=1) print *,103
backspace(k,err=1001)
if (k<0) print *,'error-1'
end block
1001 continue
backspace(k,err=1003)
if (k<0) print *,'error-1'
1002 continue
end block
1003 continue
end

use m1
do k=3,-3,-1
call s01(k)
end do
call chk(x1,1)
call chk(x2,2)
x1=0;x2=0;x3=0
do k=3,-3,-1
call s02(k)
end do
call chk(x1,1)
call chk(x2,2)
call chk(x3,3)
print *,'pass'
end
