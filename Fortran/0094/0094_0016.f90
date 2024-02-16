program pro
implicit none
real(kind=16) :: x(2,2)
x=BESSEL_J1(RESHAPE([real(16)::1.3,2.0,1.8,2.2],[2,2]))
                if( .not.(x(1,1)>0.51 .and. x(1,1)<0.55))  print *,101
                 if( .not.(x(2,1)>0.57 .and. x(2,1)<0.59))  print *,102
                  if( .not.(x(1,2)>0.56 .and. x(1,2)<0.59))  print *,103
                   if( .not.(x(2,2)>0.54 .and. x(2,2)<0.56))  print *,104
    if(kind( BESSEL_J1(RESHAPE([real(16)::1.3,2.0,1.8,2.2],[2,2]))).ne.16) print*,105
print*,"pass"
end
