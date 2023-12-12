program pro
 complex,parameter :: x1(2)=(/(0.5186, 0.3971),(2,5)/)
 complex*16,parameter :: x2(2)=(/(0.5186, 0.3971),(2,5)/)
 complex*32,parameter :: x3(2)=(/(0.5186, 0.3971),(2,5)/)
 complex:: rslt1  =ACOSH(x1(1))
 complex*16:: rslt2  =ACOSH(x2(1))
 complex*32:: rslt3  =ACOSH(x3(1))

  if (.not.((real(rslt1))>0.42 .and.  (real(rslt1))<0.44)) print *,101
  if (.not.((imag(rslt1))>1.06 .and.  (imag(rslt1))<1.08)) print *,102
  if (.not.((real(rslt2))>0.42 .and.  (real(rslt2))<0.44)) print *,103
  if (.not.((imag(rslt2))>1.06 .and.  (imag(rslt2))<1.08)) print *,104
  if (.not.((real(rslt3))>0.42 .and.  (real(rslt3))<0.44)) print *,105
  if (.not.((imag(rslt3))>1.06 .and.  (imag(rslt3))<1.08)) print *,106
  print*,"pass"
end
