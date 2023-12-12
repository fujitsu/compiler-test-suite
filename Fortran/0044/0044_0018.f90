program pro
 real,parameter :: x1(2)=(/1.7653,1.5507/)
 real*8,parameter :: x2(2)=(/1.7653,1.5507/)
 real*16,parameter :: x3(2)=(/1.7653,1.5507/)
 
 real:: rslt1(2)  = ACOSH(x1)
 real*8:: rslt2(2)  =ACOSH(x2)
 real*16:: rslt3(2)  =ACOSH(x3)

    if (.not.(((rslt1(1))>1.15) .and.  (rslt1(1))<1.17)) print *,101
    if (.not.((rslt1(2))>0.99 .and.  (rslt1(2))<1.02)) print *,102
    if (.not.(((rslt2(1))>1.15) .and.  (rslt2(1))<1.17)) print *,103
    if (.not.((rslt2(2))>0.99 .and.  (rslt2(2))<1.02)) print *,104
    if (.not.(((rslt3(1))>1.15) .and.  (rslt3(1))<1.17)) print *,105
    if (.not.((rslt3(2))>0.99 .and.  (rslt3(2))<1.02)) print *,106
    print*,"pass"
end
