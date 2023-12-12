program pro
real, parameter::x1(2)=(/2.4, 3.2/)
real:: y(2)=BESSEL_J0(x=x1-1)
    if( .not.(y(1)>0.54 .and. y(1)<0.58))  print *,101
    if( .not.(y(2)>0.09 .and. y(2)<0.12))  print *,102
    print *,"pass"
end

