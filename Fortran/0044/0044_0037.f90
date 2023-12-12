module m1
 complex,parameter :: x1(2,2)=RESHAPE([(1,0.3),(1.2,0.7),(1.2,0.53),(1,2)],[2,2])
 complex*16,parameter :: x2(2,2)=RESHAPE([(1,0.3),(1.2,0.7),(1.2,0.53),(1,2)],[2,2])
 complex*32,parameter :: x3(2,2)=RESHAPE([(1,0.3),(1.2,0.7),(1.2,0.53),(1,2)],[2,2])
end module m1
program pro
  use m1
  call sub
  print*,"pass"
  contains
  subroutine sub
    complex:: rslt1(2) = SUM(ASINH(x1(1:2,1:2)),2)
    complex*16:: rslt2(2) = SUM(ASINH(x2(1:2,1:2)),2)
    complex*32:: rslt3(2) = SUM(ASINH(x3(1:2,1:2)),2)
    if (.not.((real(rslt1(1)))>1.94 .and.  (real(rslt1(1)))<1.96)) print *,101
    if (.not.((imag(rslt1(1)))>0.53 .and.  (imag(rslt1(1)))<0.55)) print *,102
    if (.not.((real(rslt1(2)))>2.55 .and.  (real(rslt1(2)))<2.57)) print *,103
    if (.not.((imag(rslt1(2)))>1.48 .and.  (imag(rslt1(2)))<1.50)) print *,104
    if (.not.((real(rslt2(1)))>1.94 .and.  (real(rslt2(1)))<1.96)) print *,201
    if (.not.((imag(rslt2(1)))>0.53 .and.  (imag(rslt2(1)))<0.55)) print *,202
    if (.not.((real(rslt2(2)))>2.55 .and.  (real(rslt2(2)))<2.57)) print *,203
    if (.not.((imag(rslt2(2)))>1.48 .and.  (imag(rslt2(2)))<1.50)) print *,204
    if (.not.((real(rslt3(1)))>1.94 .and.  (real(rslt3(1)))<1.96)) print *,301
    if (.not.((imag(rslt3(1)))>0.53 .and.  (imag(rslt3(1)))<0.55)) print *,302
    if (.not.((real(rslt3(2)))>2.55 .and.  (real(rslt3(2)))<2.57)) print *,303
    if (.not.((imag(rslt3(2)))>1.48 .and.  (imag(rslt3(2)))<1.50)) print *,304
 end subroutine sub
end
