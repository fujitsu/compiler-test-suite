module m1
  integer,parameter  :: n1=2
  integer,parameter  :: n2=3
  complex,parameter  :: x=(1.0,1.0)
end module m1
program pro
use m1
implicit none
real :: rslt(2)=BESSEL_JN(n1,x=x%im,n2=n2)
    if( .not.(rslt(1)>0.10 .and. rslt(1)<0.12))  print *,101
    if( .not.(rslt(2)>0.0194 .and. rslt(2)<0.0196))  print *,102
print*,"pass"
end
