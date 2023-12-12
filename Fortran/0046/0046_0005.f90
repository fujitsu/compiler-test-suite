program pro
 real,parameter :: x(2,2)=BESSEL_J0(RESHAPE([2.0,1.4,1.8,2.2],[2,2]))

    if( .not.(x(1,1)>0.20 .and. x(1,1)<0.25))  print *,101
    if( .not.(x(2,1)>0.54 .and. x(2,1)<0.58))  print *,102
    if( .not.(x(1,2)>0.30 .and. x(1,2)<0.34))  print *,103
    if( .not.(x(2,2)>0.09 .and. x(2,2)<0.12))  print *,104
    print *, "pass"
end
