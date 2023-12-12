program pro
 real,parameter :: x1(2)=(/0.7653,0.5507/)
 real*8,parameter :: x2(2)=(/0.7653,0.5507/)
 real*16,parameter :: x3(2)=(/0.7653,0.5507/)

 real:: rslt1(2)  = ASINH(x1)
 real*8:: rslt2(2)  =ASINH(x2)
 real*16:: rslt3(2)  =ASINH(x3)

    if (.not.(((real(rslt1(1)))>0.69) .and.  (real(rslt1(1)))<0.72)) print *,101
    if (.not.((real(rslt1(2)))>0.50 .and.  (real(rslt1(2)))<0.53)) print *,102

    if (.not.(((real(rslt2(1)))>0.69) .and.  (real(rslt2(1)))<0.72)) print *,201
    if (.not.((real(rslt2(2)))>0.50 .and.  (real(rslt2(2)))<0.53)) print *,202

    if (.not.(((real(rslt3(1)))>0.69) .and.  (real(rslt3(1)))<0.72)) print *,301
    if (.not.((real(rslt3(2)))>0.50 .and.  (real(rslt3(2)))<0.53)) print *,302
    print*,"pass"
end
