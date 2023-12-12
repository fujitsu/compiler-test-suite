program pro
real, parameter::x1(2)=(/2.4, 3.2/)
real:: y(2)=BESSEL_Y0(x=x1-1)
    if( .not.(y(1)>0.32 .and. y(1)<0.34))  print *,101
    if( .not.(y(2)>0.51 .and. y(2)<0.54))  print *,102
    print *,"pass"
end

