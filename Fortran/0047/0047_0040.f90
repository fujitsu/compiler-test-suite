!  Intrinsic Functions Used   (Elemental and Transformational)
program pro
implicit none
integer,parameter ::n1= 2
integer,parameter ::n2= 3
real,parameter ::x1= 1.0
real,parameter ::x2= 2.0
real :: rslt1=BESSEL_YN(n1,x2)
real :: rslt2(2)=BESSEL_JN(n1,n2,x1)
real :: rslt3=BESSEL_JN(n1,x2)
real :: rslt4(2)=BESSEL_YN(n1,n2,x1)
 if( .not.(rslt1<-0.60 .and. rslt1>-0.62))  print *,101
 if( .not.(rslt2(1)>0.10 .and. rslt2(1)<0.12))  print *,102
 if( .not.(rslt2(2)>0.0194 .and. rslt2(2)<0.0196))  print *,103
 if(.not.(rslt3>0.34 .and. rslt3<0.36)) print*,104
 if( .not.(rslt4(1)<-1.64 .and. rslt4(1)>-1.66))  print *,105
 if( .not.(rslt4(2)<-5.81 .and. rslt4(2)>-5.83))  print *,106
 print*,"pass"
end
