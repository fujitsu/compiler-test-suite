module m1
  real, allocatable :: arr(:,:)
end module m1
program pro
use m1
implicit none
allocate(arr(2,2))
arr(1,1)= 10.4
arr(1,2)= 20.0
arr(2,1)= 10.8
arr(2,2)= 20.2
call sub(arr)
contains
subroutine sub(x)
  real, allocatable :: x(:,:)
  real :: y(2,2)
  y=ERFC_SCALED(x=x)
    if( .not.(y(1,1)>0.053 .and. y(1,1)<0.056))  print *,101,y
    if( .not.(y(1,2)>0.026 .and. y(1,2)<0.029))  print *,102
    if( .not.(y(2,1)>0.051 .and. y(2,1)<0.054))  print *,103
    if( .not.(y(2,2)>0.026 .and. y(2,2)<0.029))  print *,104
    print*,"pass"
end subroutine sub
end
