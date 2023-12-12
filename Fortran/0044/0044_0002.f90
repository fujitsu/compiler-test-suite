program pro
 complex,parameter :: x1(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex*16,parameter :: x2(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex*32,parameter :: x3(2)=(/(0.7653, 0.7077),(0.6560,0.5507)/)
 complex:: rslt1(2)  = ACOSH(x1)
 complex*16:: rslt2(2)  =ACOSH(x2)
 complex*32:: rslt3(2)  =ACOSH(x3)

    if (.not.(((real(rslt1(1)))>0.77) .and.  (real(rslt1(1)))<0.79)) print *,101
    if (.not.((imag(rslt1(1)))>0.94 .and.  (imag(rslt1(1)))<0.96)) print *,102
    if (.not.((real(rslt1(2)))>0.60 .and.  (real(rslt1(2)))<0.63)) print *,103
    if (.not.((imag(rslt1(2)))>0.98 .and.  (imag(rslt1(2)))<1.00)) print *,104
    
    if (.not.(((real(rslt2(1)))>0.77) .and.  (real(rslt2(1)))<0.79)) print *,201
    if (.not.((imag(rslt2(1)))>0.94 .and.  (imag(rslt2(1)))<0.96)) print *,202
    if (.not.((real(rslt2(2)))>0.60 .and.  (real(rslt2(2)))<0.63)) print *,203
    if (.not.((imag(rslt2(2)))>0.98 .and.  (imag(rslt2(2)))<1.00)) print *,204
    
    if (.not.(((real(rslt3(1)))>0.77) .and.  (real(rslt3(1)))<0.79)) print *,301
    if (.not.((imag(rslt3(1)))>0.94 .and.  (imag(rslt3(1)))<0.96)) print *,302
    if (.not.((real(rslt3(2)))>0.60 .and.  (real(rslt3(2)))<0.63)) print *,303
    if (.not.((imag(rslt3(2)))>0.98 .and.  (imag(rslt3(2)))<1.00)) print *,304
    print*,"pass"
end
