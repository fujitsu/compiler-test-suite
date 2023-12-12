program pro
 real,parameter :: x(2,2)=BESSEL_J1(RESHAPE([2.0,1.4,1.8,2.2],[2,2]))

    if( .not.(x(1,1)>0.54 .and. x(1,1)<0.59))  print *,101
    if( .not.(x(2,1)>0.53 .and. x(2,1)<0.56))  print *,102
    if( .not.(x(1,2)>0.56 .and. x(1,2)<0.59))  print *,103
    if( .not.(x(2,2)>0.54 .and. x(2,2)<0.56))  print *,104
    print *, "pass"
end
