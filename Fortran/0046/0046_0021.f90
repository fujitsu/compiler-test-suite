program pro
 real,parameter :: x1(2)=(/1.0,5.0/)
 real:: rslt1  =BESSEL_J1(x1(1))

  if (.not.(rslt1>0.43 .and.  rslt1<0.46)) print *,101
  print*,"pass"
end
