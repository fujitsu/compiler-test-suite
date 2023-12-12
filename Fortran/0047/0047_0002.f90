! 2D Array, KIND=16
! Array Element
!Transformational
program pro
implicit none
integer,parameter :: n1=2
integer,parameter :: n2=3
real(16),parameter :: x(2,2)=RESHAPE([2.0,1.0,1.6,1.8],[2,2])
real(16) :: rslt(2)=BESSEL_JN(n1,n2,x(2,1))
if( .not.(rslt(1)>0.10 .and. rslt(1)<0.12))  print *,101,rslt(1)
if( .not.(rslt(2)>0.0194 .and. rslt(2)<0.0196))  print *,102,rslt(2)
print*,"pass"
end
