program pro
implicit none
real :: x(2,2)
x=BESSEL_Y0(RESHAPE([real(8)::1.4,2.0,1.8,2.2],[2,2]))
           if( .not.(x(1,1)>0.31 .and. x(1,1)<0.34))  print *,101
           if( .not.(x(2,1)>0.50 .and. x(2,1)<0.54))  print *,102
           if( .not.(x(1,2)>0.45 .and. x(1,2)<0.48))  print *,103
           if( .not.(x(2,2)>0.51 .and. x(2,2)<0.55))  print *,104
    if(kind( BESSEL_Y0(RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))).ne.8) print*,105
print*,"pass"
end
