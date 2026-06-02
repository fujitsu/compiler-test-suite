program pro
 real*4,parameter :: x1(2,2)=RESHAPE([10.3,20.0,10.8,20.2],[2,2])
 real*8,parameter :: x2(2,2)=RESHAPE([10.3,20.0,10.8,20.2],[2,2])
 real*16,parameter :: x3(2,2)=RESHAPE([10.3,20.0,10.8,20.2],[2,2])
 
 real*4:: rslt1(2) = SUM(ERFC_SCALED(x1),2)
 real*8:: rslt2(2) = SUM(ERFC_SCALED(x2),2)
 real*16:: rslt3(2) = SUM(ERFC_SCALED(x3),2)

    if (.not.(rslt1(1)>0.09 .and.  rslt1(1)<0.11)) print *,101,rslt1
    if (.not.(rslt1(2)>0.054 .and.  rslt1(2)<0.057)) print *,102
    if (.not.(rslt2(1)>0.09 .and.  rslt2(1)<0.11)) print *,201,rslt2
    if (.not.(rslt2(2)>0.054 .and.  rslt2(2)<0.057)) print *,202
    if (.not.(rslt3(1)>0.09 .and.  rslt3(1)<0.11)) print *,301,rslt3
    if (.not.(rslt3(2)>0.054 .and.  rslt3(2)<0.057)) print *,302
 print*,"pass"
end
