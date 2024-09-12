program pro
implicit none
integer::x=2
call sub(x)
contains
subroutine sub(x)
  implicit none
  integer::x
  real :: arr(x,x)
  real :: y(2,2)

  arr(1,1)= 10.4
  arr(1,2)= 20.0
  arr(2,1)= 10.8
  arr(2,2)= 20.2
  y=ERFC_SCALED(x=arr)
    if( .not.(y(1,1)>0.053 .and. y(1,1)<0.056))  print *,101
    if( .not.(y(1,2)>0.026 .and. y(1,2)<0.029))  print *,102
    if( .not.(y(2,1)>0.051 .and. y(2,1)<0.054))  print *,103
    if( .not.(y(2,2)>0.026 .and. y(2,2)<0.029))  print *,104
    print*,"pass"
end subroutine sub
end
