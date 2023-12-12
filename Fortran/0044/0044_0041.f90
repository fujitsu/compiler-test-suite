module m
 complex:: rslt1(2)  =ASINH((/(0.5304, 0.2382),(0.3919, 0.4615)/))
 complex*16:: rslt2(2)  =ASINH((/(0.5304, 0.2382),(0.3919, 0.4615)/))
 complex*32:: rslt3(2)  =ASINH((/(0.5304, 0.2382),(0.3919, 0.4615)/))
contains
subroutine sub
    if (.not.((real(rslt1(1)))>0.50 .and.  (real(rslt1(1)))<0.53)) print *,101
    if (.not.((imag(rslt1(1)))>0.20 .and.  (imag(rslt1(1)))<0.23)) print *,102
    if (.not.((real(rslt1(2)))>0.41 .and.  (real(rslt1(2)))<0.43)) print *,103
    if (.not.((imag(rslt1(2)))>0.42 .and.  (imag(rslt1(2)))<0.45)) print *,104
    if (.not.((real(rslt2(1)))>0.50 .and.  (real(rslt2(1)))<0.53)) print *,201
    if (.not.((imag(rslt2(1)))>0.20 .and.  (imag(rslt2(1)))<0.23)) print *,202
    if (.not.((real(rslt2(2)))>0.41 .and.  (real(rslt2(2)))<0.43)) print *,203
    if (.not.((imag(rslt2(2)))>0.42 .and.  (imag(rslt2(2)))<0.45)) print *,204
    if (.not.((real(rslt3(1)))>0.50 .and.  (real(rslt3(1)))<0.53)) print *,301
    if (.not.((imag(rslt3(1)))>0.20 .and.  (imag(rslt3(1)))<0.23)) print *,302
    if (.not.((real(rslt3(2)))>0.41 .and.  (real(rslt3(2)))<0.43)) print *,303
    if (.not.((imag(rslt3(2)))>0.42 .and.  (imag(rslt3(2)))<0.45)) print *,304
    print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
