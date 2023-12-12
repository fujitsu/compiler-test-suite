program pro
real, parameter::x1(2)=(/4.0, 5.0/)
real:: y(2)=BESSEL_Y1(x=x1-1)
    if( .not.(y(1)>0.30 .and. y(1)<0.34))  print *,101
    if( .not.(y(2)>0.37 .and. y(2)<0.41))  print *,102
    print *,"pass"
end

