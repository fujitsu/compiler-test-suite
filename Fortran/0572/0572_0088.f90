program pro
implicit none
real :: x(2,2)
x=ERFC_SCALED(RESHAPE([real(8)::10.4,20.0,10.8,20.2],[2,2]))
    if( .not.(x(1,1)>0.053 .and. x(1,1)<0.056))  print *,101,x
    if( .not.(x(2,1)>0.027 .and. x(2,1)<0.029))  print *,102
    if( .not.(x(1,2)>0.051 .and. x(1,2)<0.053))  print *,103
    if( .not.(x(2,2)>0.026 .and. x(2,2)<0.028))  print *,104

        if(kind( ERFC_SCALED(RESHAPE([real(8)::10.4,20.0,10.8,20.2],[2,2]))).ne.8) print*,103
print*,"pass"
end
