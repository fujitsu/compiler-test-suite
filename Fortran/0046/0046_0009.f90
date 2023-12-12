program pro
 real*4,parameter :: x1(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 real*8,parameter :: x2(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 real*16,parameter :: x3(2,2)=RESHAPE([2.0,1.4,1.8,2.2],[2,2])
 
 real*4:: rslt1(2) = SUM(BESSEL_J0(x1),2)
 real*8:: rslt2(2) = SUM(BESSEL_J0(x2),2)
 real*16:: rslt3(2) = SUM(BESSEL_J0(x3),2)

    if (.not.(rslt1(1)>0.54 .and.  rslt1(1)<0.58)) print *,101
    if (.not.(rslt1(2)>0.65 .and.  rslt1(2)<0.69)) print *,102
    if (.not.(rslt2(1)>0.54 .and.  rslt2(1)<0.58)) print *,201
    if (.not.(rslt2(2)>0.65 .and.  rslt2(2)<0.69)) print *,202
    if (.not.(rslt3(1)>0.54 .and.  rslt3(1)<0.58)) print *,301
    if (.not.(rslt3(2)>0.65 .and.  rslt3(2)<0.69)) print *,302
 print*,"pass"
end
