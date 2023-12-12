program pro
 real*4,parameter :: x1(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 real*8,parameter :: x2(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 real*16,parameter :: x3(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 
 real*4:: rslt1(2) = SUM(BESSEL_Y0(x1),2)
 real*8:: rslt2(2) = SUM(BESSEL_Y0(x2),2)
 real*16:: rslt3(2) = SUM(BESSEL_Y0(x3),2)

    if (.not.(rslt1(1)>0.97 .and.  rslt1(1)<0.99)) print *,101
    if (.not.(rslt1(2)>0.84 .and.  rslt1(2)<0.86)) print *,102
    if (.not.(rslt2(1)>0.97 .and.  rslt2(1)<0.99)) print *,103
    if (.not.(rslt2(2)>0.84 .and.  rslt2(2)<0.86)) print *,104
    if (.not.(rslt3(1)>0.97 .and.  rslt3(1)<0.99)) print *,105
    if (.not.(rslt3(2)>0.84 .and.  rslt3(2)<0.86)) print *,106
    print*,"pass"
end
