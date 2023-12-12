program pro
 real,parameter :: x1(2)=(/0.7653,0.5507/)
 real*8,parameter :: x2(2)=(/0.7653,0.5507/)
 real*16,parameter :: x3(2)=(/0.7653,0.5507/)
 
 real:: rslt1(2)  = ATANH(x1)
 real*8:: rslt2(2)  =ATANH(x2)
 real*16:: rslt3(2)  =ATANH(x3)

    if (.not.(((real(rslt1(1)))>0.99) .and.  (real(rslt1(1)))<1.02)) print *,101
    if (.not.((real(rslt1(2)))>0.60 .and.  (real(rslt1(2)))<0.63)) print *,102
    if (.not.(((real(rslt2(1)))>0.99) .and.  (real(rslt2(1)))<1.02)) print *,103
    if (.not.((real(rslt2(2)))>0.60 .and.  (real(rslt2(2)))<0.63)) print *,104
    if (.not.(((real(rslt3(1)))>0.99) .and.  (real(rslt3(1)))<1.02)) print *,105
    if (.not.((real(rslt3(2)))>0.60 .and.  (real(rslt3(2)))<0.63)) print *,106
    print*,"pass"
end
