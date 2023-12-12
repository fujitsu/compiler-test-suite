program pro
 real,parameter :: x1(2)=(/(0.5186, 0.3971),(2,5)/)
 real*8,parameter :: x2(2)=(/(0.5186, 0.3971),(2,5)/)
 real*16,parameter :: x3(2)=(/(0.5186, 0.3971),(2,5)/)
 
 real:: rslt1  =ASINH(x1(1))
 real*8:: rslt2  =ASINH(x2(1))
 real*16:: rslt3  =ASINH(x3(1))

  if (.not.(((rslt1))>0.49 .and.  ((rslt1))<0.51)) print *,101
  if (.not.(((rslt2))>0.49 .and.  ((rslt2))<0.51)) print *,103
  if (.not.(((rslt3))>0.49 .and.  ((rslt3))<0.51)) print *,105
  print*,"pass"
end
