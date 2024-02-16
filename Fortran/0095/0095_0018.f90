program pro
implicit none
real :: arr(5)
Intrinsic :: LOG_GAMMA
real :: x(2)
arr= 5.0
arr(3)= 3.0
arr(4)= 4.0
x=LOG_GAMMA(x=arr(3:4))
if( .not.(x(1)>0.68 .and. x(1)<0.70))  print *,101
if( .not.(x(2)>1.78 .and. x(2)<1.80))  print *,102
        print*,"pass"
end
