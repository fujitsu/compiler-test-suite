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
  arr(1,1)= 3.0
  arr(1,2)= 4.4
  arr(2,1)= 3.8
  arr(2,2)= 4.2
  y=LOG_GAMMA(x=arr)
    if( .not.(y(1,1)>0.68 .and. y(1,1)<0.70))  print *,101
    if( .not.(y(2,1)>1.53 .and. y(2,1)<1.55))  print *,102
    if( .not.(y(1,2)>2.30 .and. y(1,2)<2.32))  print *,103
    if( .not.(y(2,2)>2.03 .and. y(2,2)<2.05))  print *,104
        print*,"pass"
end subroutine sub
end
