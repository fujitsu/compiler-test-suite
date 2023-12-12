module m
 real:: rslt1(2)  =ASINH((/0.5304_4, 0.2382_4/))
 real*8:: rslt2(2)  =ASINH((/0.5304_8, 0.2382_8/))
 real*16:: rslt3(2)  =ASINH((/0.5304_16, 0.2382_16/))
contains
subroutine sub
    if (.not.((rslt1(1))>0.49 .and.  (rslt1(1))<0.51)) print *,101
    if (.not.((rslt1(2))>0.22 .and.  (rslt1(2))<0.24)) print *,102

    if (.not.((rslt2(1))>0.49 .and. (rslt2(1))<0.51)) print *,201
    if (.not.((rslt2(2))>0.22 .and.  (rslt2(2))<0.24)) print *,202

    if (.not.((rslt3(1))>0.49 .and.  (rslt3(1))<0.51)) print *,301
    if (.not.((rslt3(2))>0.22 .and.  (rslt3(2))<0.24)) print *,302
    print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
