program pro
 real,parameter :: x1(2)=(/3.0,5.0/)
 real:: rslt1  =LOG_GAMMA(x1(1))

  if(.not.(rslt1>0.68 .and. rslt1<0.70)) print*,101,rslt1
        print*,"pass"
end
