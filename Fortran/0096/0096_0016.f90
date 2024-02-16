! Expression used
program pro
real, parameter::x1(2)=(/6.4, 7.2/)
real:: y(2)=LOG_GAMMA(x=x1-5+3)
    if( .not.(y(1)>2.30 .and. y(1)<2.32))  print *,101,y
    if( .not.(y(2)>3.47 .and. y(2)<3.49))  print *,102
    print *,"pass"
end

