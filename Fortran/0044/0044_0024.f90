module m
 real:: rslt1(2)  =ACOSH((/1.5304, 1.2382/))
 real*8:: rslt2(2)  =ACOSH((/1.5304, 1.2382/))
 real*16:: rslt3(2)  =ACOSH((/1.5304, 1.2382/))
contains
subroutine sub
    if (.not.((rslt1(1))>0.97 .and.  (rslt1(1))<0.99)) print *,101
    if (.not.((rslt1(2))>0.67 .and.  (rslt1(2))<0.69)) print *,102

    if (.not.((rslt2(1))>0.97 .and. (rslt2(1))<0.99)) print *,201
    if (.not.((rslt2(2))>0.67 .and.  (rslt2(2))<0.69)) print *,202

    if (.not.((rslt3(1))>0.97 .and.  (rslt3(1))<0.99)) print *,301
    if (.not.((rslt3(2))>0.67 .and.  (rslt3(2))<0.69)) print *,302
    print*,"pass"
end subroutine
end module
program pro
use m
call sub
end
