program pro
 real*4,parameter :: x1(2,2)=RESHAPE([2.3,3.0,4.8,3.2],[2,2])
 real*8,parameter :: x2(2,2)=RESHAPE([2.3,3.0,4.8,3.2],[2,2])
 real*16,parameter :: x3(2,2)=RESHAPE([2.3,3.0,4.8,3.2],[2,2])

 real*4:: rslt1(2) = SUM(LOG_GAMMA(x1),2)
 real*8:: rslt2(2) = SUM(LOG_GAMMA(x2),2)
 real*16:: rslt3(2) = SUM(LOG_GAMMA(x3),2)
    if (.not.(rslt1(1)>3.02 .and.  rslt1(1)<3.05)) print *,101
    if (.not.(rslt1(2)>1.56 .and.  rslt1(2)<1.59)) print *,102
    if (.not.(rslt2(1)>3.02 .and.  rslt2(1)<3.05)) print *,201
    if (.not.(rslt2(2)>1.56 .and.  rslt2(2)<1.59)) print *,202
    if (.not.(rslt3(1)>3.02 .and.  rslt3(1)<3.05)) print *,301
    if (.not.(rslt3(2)>1.56 .and.  rslt3(2)<1.59)) print *,302
 print*,"pass"
end
