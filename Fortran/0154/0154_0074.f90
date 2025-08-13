module m1
integer(8),save:: x1(-3:3)=0
integer(8),save:: x2(-3:3)=0
integer(8),save:: x3(-3:3)=0
integer(8),save:: x4(-3:3)=0
contains
subroutine chk(x,n)
integer(8):: x(-3:3)
do k=2,-3,-1
if (x(3)/=x(k) .and. x(k)/=0) then
   write(10,*)201,k,n
   write(10,'(z16.16,x,z16.16)')x(3),x(k)
endif
end do
end subroutine
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
block 
integer a3(max(k,10000))
x3(k)=loc(a3)
a3(1)=1
if (a3(1)/=1) print *,103
block 
integer a4(max(k,10000))
x4(k)=loc(a4)
a4(1)=1
if (a4(1)/=1) print *,103
nn=k+4
select case(nn)
 case (1)
  goto 1000
 case (2)
  goto 1001
 case (3)
  goto 1002
 case (4)
  goto 1003
end select
1000 continue
if (nn==1.or.nn>=5) then
else
  print *,901,nn
endif
end block
1001 continue
if (nn==1.or.nn==2.or.nn>=5) then
else
  print *,902,nn
endif
end block
1002 continue
if (nn==1.or.nn==2.or.nn==3.or.nn>=5) then
else
  print *,903,nn
endif
end block
1003 continue
end

subroutine ss
use m1
do k=3,-3,-1
call s02(k)
end do
call chk(x1,11)
call chk(x2,12)
call chk(x3,13)
call chk(x4,14)
end
do k=1,100
call ss
end do
print *,'pass'
end
