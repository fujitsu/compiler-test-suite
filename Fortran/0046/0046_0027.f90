program pro
 real*4,parameter :: x1(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 real*8,parameter :: x2(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 real*16,parameter :: x3(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 
 real*4:: rslt1(2) = SUM(BESSEL_J1(x1),2)
 real*8:: rslt2(2) = SUM(BESSEL_J1(x2),2)
 real*16:: rslt3(2) = SUM(BESSEL_J1(x3),2)

    if (.not.(rslt1(1)>1.14 .and.  rslt1(1)<1.16)) print *,101
    if (.not.(rslt1(2)>1.07 .and.  rslt1(2)<1.11)) print *,102

    if (.not.(rslt2(1)>1.14 .and.  rslt2(1)<1.16)) print *,201
    if (.not.(rslt2(2)>1.07 .and.  rslt2(2)<1.11)) print *,202

    if (.not.(rslt3(1)>1.14 .and.  rslt3(1)<1.16)) print *,301
    if (.not.(rslt3(2)>1.07 .and.  rslt3(2)<1.11)) print *,302
 print*,"pass"
end
