program pro
 real,parameter :: x1(2)=(/20.0,50.0/)
 real:: rslt1  =ERFC_SCALED(x1(1))

        if(.not.(rslt1>0.026 .and. rslt1<0.030)) print*,101
  print*,"pass"
end
