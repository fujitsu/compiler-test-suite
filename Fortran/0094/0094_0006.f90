program pro
implicit none
real :: x(2,2)
x=BESSEL_J0(RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))
    if( .not.(x(1,1)>0.61 .and. x(1,1)<0.63))  print *,101
    if( .not.(x(2,1)>0.20 .and. x(2,1)<0.25))  print *,102
    if( .not.(x(1,2)>0.30 .and. x(1,2)<0.35))  print *,103
    if( .not.(x(2,2)>0.09 .and. x(2,2)<0.12))  print *,104
    if(kind( BESSEL_J0(RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))).ne.8) print*,103
print*,"pass"
end
