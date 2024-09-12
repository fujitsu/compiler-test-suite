program pro
implicit none
real :: arr(5)
Intrinsic :: ERFC_SCALED
real :: x(2)
arr= 5.0
arr(3)= 10.0
arr(4)= 20.0
x=ERFC_SCALED(x=arr(3:4))
if( .not.(x(1)>0.055 .and. x(1)<0.057))  print *,101,x
if( .not.(x(2)>0.026 .and. x(2)<0.029))  print *,102
print*,"pass"
end
