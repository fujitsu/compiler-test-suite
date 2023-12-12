program pro
 complex,parameter :: x1(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex*16,parameter :: x2(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex*32,parameter :: x3(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex:: rslt1(2)  = ASINH(x1)
 complex*16:: rslt2(2)  =ASINH(x2)
 complex*32:: rslt3(2)  =ASINH(x3)

    if (.not.(((real(rslt1(1)))>0.79) .and.  (real(rslt1(1)))<0.82)) print *,101
    if (.not.((imag(rslt1(1)))>0.54 .and.  (imag(rslt1(1)))<0.57)) print *,102
    if (.not.((real(rslt1(2)))>0.65 .and.  (real(rslt1(2)))<0.68)) print *,103
    if (.not.((imag(rslt1(2)))>0.45 .and.  (imag(rslt1(2)))<0.47)) print *,104

    if (.not.(((real(rslt2(1)))>0.79) .and.  (real(rslt2(1)))<0.82)) print *,201
    if (.not.((imag(rslt2(1)))>0.54 .and.  (imag(rslt2(1)))<0.57)) print *,202
    if (.not.((real(rslt2(2)))>0.65 .and.  (real(rslt2(2)))<0.68)) print *,203
    if (.not.((imag(rslt2(2)))>0.45 .and.  (imag(rslt2(2)))<0.47)) print *,204

    if (.not.(((real(rslt3(1)))>0.79) .and.  (real(rslt3(1)))<0.82)) print *,301
    if (.not.((imag(rslt3(1)))>0.54 .and.  (imag(rslt3(1)))<0.57)) print *,302
    if (.not.((real(rslt3(2)))>0.65 .and.  (real(rslt3(2)))<0.68)) print *,303
    if (.not.((imag(rslt3(2)))>0.45 .and.  (imag(rslt3(2)))<0.47)) print *,304
    print*,"pass"
end
