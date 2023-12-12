program pro
 real,parameter :: x1(2)=(/1.0,5.0/)
 real:: rslt  =BESSEL_Y1(x1(1))
  if(.not.(rslt<-0.780 .and. rslt>-0.784)) print*,101
  print*,"pass"
end
