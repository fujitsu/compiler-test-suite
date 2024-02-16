program pro
implicit none
real :: x(2,2)
x=LOG_GAMMA(RESHAPE([real(8)::3.0,4.4,3.8,4.2],[2,2]))
        if( .not.(x(1,1)>0.68 .and. x(1,1)<0.70))  print *,101
        if( .not.(x(2,1)>2.30 .and. x(2,1)<2.32))  print *,102
        if( .not.(x(1,2)>1.53 .and. x(1,2)<1.55))  print *,103
        if( .not.(x(2,2)>2.03 .and. x(2,2)<2.05))  print *,104
    if(kind( LOG_GAMMA(RESHAPE([real(8)::3.0,4.4,3.8,4.2],[2,2]))).ne.8) print*,103
print*,"pass"

end
