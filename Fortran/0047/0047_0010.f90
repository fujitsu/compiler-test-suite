! Consecutive Calling
program pro
implicit none
integer,parameter ::n1= 2
integer,parameter  ::n2= 3
real,parameter  ::x1= 2.0
real,parameter  ::x2= 1.0
real :: rslt(2)=BESSEL_JN(n1,n2,x1)+BESSEL_JN(n1,x2)
if(.not.(rslt(1)>0.45 .and. rslt(1)<0.47)) print*,101
if(.not.(rslt(2)>0.23 .and. rslt(2)<0.25)) print*,102
print*,"pass"
end
