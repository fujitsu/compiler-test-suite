! 2D Array, KIND=16
! Array Element
!Transformational
program pro
implicit none
integer,parameter :: n1=2
integer,parameter :: n2=3
real(16),parameter :: x(1,2)=RESHAPE([2.0,1.6],[1,2])
real(16) :: rslt(2)=BESSEL_YN(n1,n2,x(1,2))
if( .not.(rslt(1)<-0.854 .and. rslt(1)>-0.855))  print *,101
if( .not.(rslt(2)<-1.789 .and. rslt(2)>-1.79))  print *,102
print*,"pass"
end
