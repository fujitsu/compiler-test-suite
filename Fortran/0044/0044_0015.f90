module m
 complex:: rslt1(2)  =ACOSH((/(0.5304_4, 0.2382_4),(0.3919_4, 0.4615_4)/))
 complex*16:: rslt2(2)  =ACOSH((/(0.5304, 0.2382),(0.3919, 0.4615)/))
 complex*32:: rslt3(2)  =ACOSH((/(0.5304_16, 0.2382_16),(0.3919_16, 0.4615_16)/))
contains
subroutine sub
    if (.not.((real(rslt1(1)))>0.26 .and.  (real(rslt1(1)))<0.28)) print *,101
    if (.not.((imag(rslt1(1)))>1.02 .and.  (imag(rslt1(1)))<1.04)) print *,102
    if (.not.((real(rslt1(2)))>0.46 .and.  (real(rslt1(2)))<0.48)) print *,103
    if (.not.((imag(rslt1(2)))>1.20 .and.  (imag(rslt1(2)))<1.22)) print *,104

    if (.not.((real(rslt2(1)))>0.26 .and.  (real(rslt2(1)))<0.28)) print *,201
    if (.not.((imag(rslt2(1)))>1.02 .and.  (imag(rslt2(1)))<1.04)) print *,202
    if (.not.((real(rslt2(2)))>0.46 .and.  (real(rslt2(2)))<0.48)) print *,203
    if (.not.((imag(rslt2(2)))>1.20 .and.  (imag(rslt2(2)))<1.22)) print *,204

    if (.not.((real(rslt3(1)))>0.26 .and.  (real(rslt3(1)))<0.28)) print *,301
    if (.not.((imag(rslt3(1)))>1.02 .and.  (imag(rslt3(1)))<1.04)) print *,302
    if (.not.((real(rslt3(2)))>0.46 .and.  (real(rslt3(2)))<0.48)) print *,303
    if (.not.((imag(rslt3(2)))>1.20 .and.  (imag(rslt3(2)))<1.22)) print *,304
    print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
