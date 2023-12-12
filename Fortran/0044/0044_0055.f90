program pro
 complex,parameter :: x1(2)=(/(0.5186, 0.3971),(2,5)/)
 complex*16,parameter :: x2(2)=(/(0.5186, 0.3971),(2,5)/)
 complex*32,parameter :: x3(2)=(/(0.5186, 0.3971),(2,5)/)
 complex:: rslt1  =ATANH(x1(1))
 complex*16:: rslt2  =ATANH(x2(1))
 complex*32:: rslt3  =ATANH(x3(1))

  if (.not.((real(rslt1))>0.45 .and.  (real(rslt1))<0.47)) print *,101
  if (.not.((imag(rslt1))>0.46 .and.  (imag(rslt1))<0.48)) print *,102
  if (.not.((real(rslt2))>0.45 .and.  (real(rslt2))<0.47)) print *,103
  if (.not.((imag(rslt2))>0.46 .and.  (imag(rslt2))<0.48)) print *,104
  if (.not.((real(rslt3))>0.45 .and.  (real(rslt3))<0.47)) print *,105
  if (.not.((imag(rslt3))>0.46 .and.  (imag(rslt3))<0.48)) print *,106
  print*,"pass"
end
