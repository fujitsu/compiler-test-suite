program pro
implicit none
integer,parameter  ::n1= 1
integer,parameter  ::n2= 100
real(kind=8),parameter  ::x1= 1.0
real(kind=8),parameter  ::x2(100)= 2.0
real*8,parameter :: rslt1(100)=BESSEL_YN(n1,x2)
real*8,parameter :: rslt2(100)=BESSEL_YN(n1,n2,x1)
real*8 :: rslt4(100)
real*8 :: rslt5(100)
rslt4=BESSEL_YN(n1,x2)
rslt5=BESSEL_YN(n1,n2,x1)
if(.not.(rslt1(1)>-0.109 .and. rslt1(1)<-0.107)) print*,101, rslt1(1)
if( .not.(rslt2(2)>-1.66 .and. rslt2(2)<-1.64))  print *,102,rslt2(2)
if( .not.(rslt2(2)>-1.66 .and. rslt2(2)<-1.64))  print *,103,rslt2(2)
if(.not.(rslt4(1)>-0.109 .and. rslt4(1)<-0.107)) print*,101, rslt1(1)
if( .not.(rslt5(2)>-1.66 .and. rslt5(2)<-1.64))  print *,102,rslt2(2)
if( .not.(rslt5(2)>-1.66 .and. rslt5(2)<-1.64))  print *,103,rslt2(2)
print*,"pass"
end

