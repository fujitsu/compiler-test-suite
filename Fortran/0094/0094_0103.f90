program pro
implicit none
integer ::n1= 2
integer ::n2= 3
real ::x1= 1.0
real ::x2= 2.0
real :: rslt1,rslt2(2)
rslt1=BESSEL_YN(n1,x2)
rslt2=BESSEL_YN(n1,n2,x1)
    if( .not.(rslt1<-0.60 .and. rslt1>-0.62))  print *,101
    if( .not.(rslt2(1)<-1.64 .and. rslt2(1)>-1.66))  print *,102
    if( .not.(rslt2(2)<-5.81 .and. rslt2(2)>-5.83))  print *,103
    print*,"pass"
end
