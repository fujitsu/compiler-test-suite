module m1
complex*32 c
real*16    d
integer*4  e
character(5)  f
end
use m1
do i=1,4
c=0
call sub(*1,*2,*3,i,c)
if (abs(c-(2.,3.))>0.00001)write(6,*) "NG"
if (i/=4)write(6,*) "NG"; cycle
1 continue
if (abs(c-(2.,3.))>0.00001)write(6,*) "NG"
if (i/=1)write(6,*) "NG"; cycle
2 continue
if (abs(c-(2.,3.))>0.00001)write(6,*) "NG"
if (i/=2)write(6,*) "NG"; cycle
3 continue
if (abs(c-(2.,3.))>0.00001)write(6,*) "NG"
if (i/=3)write(6,*) "NG"; cycle
end do

do i=1,4
d=0.
call ent1(*11,*12,*13,i,d)
if (abs(d-4.)>0.00001)write(6,*) "NG"
if (i/=4)write(6,*) "NG"; cycle
11 continue
if (abs(d-4.)>0.00001)write(6,*) "NG"
if (i/=1)write(6,*) "NG"; cycle
12 continue
if (abs(d-4.)>0.00001)write(6,*) "NG"
if (i/=2)write(6,*) "NG"; cycle
13 continue
if (abs(d-4.)>0.00001)write(6,*) "NG"
if (i/=3)write(6,*) "NG"; cycle
end do

do i=1,4
e=0
call ent2(*21,*22,*23,i,e)
if (   e/=5)write(6,*) "NG"
if (i/=4)write(6,*) "NG"; cycle
21 continue
if (   e/=5)write(6,*) "NG"
if (i/=1)write(6,*) "NG"; cycle
22 continue
if (   e/=5)write(6,*) "NG"
if (i/=2)write(6,*) "NG"; cycle
23 continue
if (   e/=5)write(6,*) "NG"
if (i/=3)write(6,*) "NG"; cycle
end do

do i=1,4
f='x'
call ent3(*31,*32,*33,i,f)
if (   f/='6789a')write(6,*) "NG"
cycle
31 continue
if (   f/='6789a')write(6,*) "NG"
write(6,*) "NG"; cycle
32 continue
if (   f/='6789a')write(6,*) "NG"
write(6,*) "NG"; cycle
33 continue
if (   f/='6789a')write(6,*) "NG"
write(6,*) "NG"; cycle
end do

do i=1,4
call ent4(*41,*42,*43,i)
cycle
41 continue
write(6,*) "NG"; cycle
42 continue
write(6,*) "NG"; cycle
43 continue
write(6,*) "NG"; cycle
end do

assign 101 to j
goto j
100 write(6,*) "NG"
101 continue

do i=1,4
select case(i)
case (1)
assign 201 to j
case (2)
assign 202 to j
case (3)
assign 203 to j
case (4)
assign 204 to j
end select
goto j
200 write(6,*) "NG"
201 continue
if (i/=1)write(6,*) "NG";cycle
202 continue
if (i/=2)write(6,*) "NG";cycle
203 continue
if (i/=3)write(6,*) "NG";cycle
204 continue
if (i/=4)write(6,*) "NG";cycle
end do

print *,'pass'
end
subroutine sub(*,*,*,i,c)
complex*32 c
real*16    d
integer*4  e
character(*)  f
c=(2.,3.)
return i
entry ent1(*,*,*,i,d)
d=4.
return i
entry ent2(*,*,*,i,e)
e=5
return i
entry ent3(*,*,*,i,f)
f='6789a'
return 
entry ent4(*,*,*,i)
end
