program pro
 complex,parameter :: x1(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex*16,parameter :: x2(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex*32,parameter :: x3(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex:: rslt1(2)  = ATANH(x1)
 complex*16:: rslt2(2)  =ATANH(x2)
 complex*32:: rslt3(2)  =ATANH(x3)

    if (.not.(((real(rslt1(1)))>0.45) .and.  (real(rslt1(1)))<0.47)) print *,101
    if (.not.((imag(rslt1(1)))>0.80 .and.  (imag(rslt1(1)))<0.83)) print *,102
    if (.not.((real(rslt1(2)))>0.48 .and.  (real(rslt1(2)))<0.50)) print *,103
    if (.not.((imag(rslt1(2)))>0.65 .and.  (imag(rslt1(2)))<0.67)) print *,104

    if (.not.(((real(rslt2(1)))>0.45) .and.  (real(rslt2(1)))<0.47)) print *,201
    if (.not.((imag(rslt2(1)))>0.80 .and.  (imag(rslt2(1)))<0.83)) print *,202
    if (.not.((real(rslt2(2)))>0.48 .and.  (real(rslt2(2)))<0.50)) print *,203
    if (.not.((imag(rslt2(2)))>0.65 .and.  (imag(rslt2(2)))<0.67)) print *,204

    if (.not.(((real(rslt3(1)))>0.45) .and.  (real(rslt3(1)))<0.47)) print *,301
    if (.not.((imag(rslt3(1)))>0.80 .and.  (imag(rslt3(1)))<0.83)) print *,302
    if (.not.((real(rslt3(2)))>0.48 .and.  (real(rslt3(2)))<0.50)) print *,303
    if (.not.((imag(rslt3(2)))>0.65 .and.  (imag(rslt3(2)))<0.67)) print *,304
    print*,"pass"
end
