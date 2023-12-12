program pro
 real,parameter :: x(2,2)=BESSEL_Y1(RESHAPE([3.0,4.0,5.0,3.5],[2,2]))
    if( .not.(x(1,1)>0.30 .and. x(1,1)<0.34))  print *,101
    if( .not.(x(2,1)>0.37 .and. x(2,1)<0.40))  print *,102
    if( .not.(x(1,2)>0.12 .and. x(1,2)<0.16))  print *,103
    if( .not.(x(2,2)>0.40 .and. x(2,2)<0.45))  print *,104
    print *, "pass"
end
