module m1
real(8) :: arr(2,2)
real(8) :: x(2,2)
contains
subroutine sub1
implicit none
 x=ERFC_SCALED(x=arr)
end subroutine
end module m1

program pro
use m1
implicit none
 arr(1,1)= 10.4
 arr(1,2)= 20.0
 arr(2,1)= 10.8
 arr(2,2)= 20.2
call sub1
if( .not.(x(1,1)>0.053 .and. x(1,1)<0.056))  print *,101,x
if( .not.(x(1,2)>0.027 .and. x(1,2)<0.029))  print *,102
if( .not.(x(2,1)>0.051 .and. x(2,1)<0.053))  print *,103
if( .not.(x(2,2)>0.026 .and. x(2,2)<0.028))  print *,104

print*,"pass"
end
