module m
 real:: rslt1(2)  =ATANH((/0.5304_4, 0.2382_4/))
 real*8:: rslt2(2)  =ATANH((/0.5304, 0.2382/))
 real*16:: rslt3(2)  =ATANH((/0.5304_16, 0.2382_16/))
contains
subroutine sub
    if (.not.((rslt1(1))>0.58 .and.  (rslt1(1))<0.61)) print *,101
    if (.not.((rslt1(2))>0.23 .and.  (rslt1(2))<0.25)) print *,102

    if (.not.((rslt2(1))>0.58 .and. (rslt2(1))<0.61)) print *,201
    if (.not.((rslt2(2))>0.23 .and.  (rslt2(2))<0.25)) print *,202

    if (.not.((rslt3(1))>0.58 .and.  (rslt3(1))<0.61)) print *,301
    if (.not.((rslt3(2))>0.23 .and.  (rslt3(2))<0.25)) print *,302
    print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
