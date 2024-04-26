program pro
implicit none
real,parameter :: rslt(2)=BESSEL_JN(2,3,1.0)
    if( .not.(rslt(1)>0.10 .and. rslt(1)<0.12))  print *,101
    if( .not.(rslt(2)>0.0194 .and. rslt(2)<0.0196))  print *,102
print*,"pass"
end
