program pro
implicit none
real :: x(4)
x=ERFC_SCALED((/10.4,20.0,10.8,20.2/))
if( .not.(x(1)>0.053 .and. x(1)<0.056))  print *,101,x
if( .not.(x(2)>0.027 .and. x(2)<0.029))  print *,102
if( .not.(x(3)>0.051 .and. x(3)<0.053))  print *,103
if( .not.(x(4)>0.026 .and. x(4)<0.028))  print *,104
print*,"pass"
end
