program pro
real, parameter::x1(2)=(/20.4, 30.2/)
real:: y(2)=ERFC_SCALED(x=x1-1)
    if( .not.(y(1)>0.027 .and. y(1)<0.030))  print *,101,y
    if( .not.(y(2)>0.018 .and. y(2)<0.020))  print *,102
    print *,"pass"
end

