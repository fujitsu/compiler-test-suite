program pro
implicit none
integer,parameter  ::n1= 1
integer,parameter  ::n2= 10000
real(kind=8),parameter  ::x1= 1.0
real(kind=8),parameter  ::x2(10000)= 2.0
real*8 :: rslt1(10000)=BESSEL_JN(n1,x2)
real*8 :: rslt2(10000)=BESSEL_JN(n1,n2,x1)
real*8 :: rslt3(10000)
real*8 :: rslt4(10000)
rslt3 =BESSEL_JN(n1,x2)
rslt4=BESSEL_JN(n1,n2,x1)
if(.not.(rslt1(1)>0.57 .and. rslt1(1)<0.58)) print*,101,rslt1(1)
if( .not.(rslt2(1)>0.44 .and. rslt2(1)<0.45))  print *,102,rslt2(1)
if( .not.(rslt2(2)>0.11 .and. rslt2(2)<0.12))  print *,103,rslt2(2)
if(.not.(rslt3(1)>0.57 .and. rslt3(1)<0.58)) print*,101,rslt1(1)
if( .not.(rslt4(1)>0.44 .and. rslt4(1)<0.45))  print *,102,rslt2(1)
if( .not.(rslt4(2)>0.11 .and. rslt4(2)<0.12))  print *,103,rslt2(2)
print*,"pass"
end

