program pro
 real,parameter :: x1(2)=(/(1.5186, 1.3971),(2,5)/)
 real*8,parameter :: x2(2)=(/(1.5186, 1.3971),(2,5)/)
 real*16,parameter :: x3(2)=(/(1.5186, 1.3971),(2,5)/)
 
 real:: rslt1  =ACOSH(x1(1))
 real*8:: rslt2  =ACOSH(x2(1))
 real*16:: rslt3  =ACOSH(x3(1))

  if (.not.(rslt1)>0.96 .and.  (rslt1)<0.98) print *,101
  if (.not.(rslt2)>0.96 .and.  (rslt2)<0.98) print *,102
  if (.not.(rslt3)>0.96 .and.  (rslt3)<0.98) print *,103
  print*,"pass"
end
