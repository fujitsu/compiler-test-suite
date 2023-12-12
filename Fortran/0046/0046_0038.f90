program pro
 real(kind=4),parameter :: x1(2)=(/1.0,2.0/)
 real(kind=8),parameter :: x2(2)=(/1.0,2.0/)
 real(kind=16),parameter :: x3(2)=(/1.0,2.0/)
 
 real(kind=4):: rslt1(2)  = BESSEL_Y0(x1)
 real(kind=8):: rslt2(2)  = BESSEL_Y0(x2)
 real(kind=16):: rslt3(2) = BESSEL_Y0(x3)

    if (.not.(rslt1(1)>0.086 .and. rslt1(1)<0.089)) print *,101
    if (.not.(rslt1(2)>0.50 .and. rslt1(2)<0.53)) print *,102

    if (.not.(rslt2(1)>0.086 .and. rslt2(1)<0.089)) print *,201
    if (.not.(rslt2(2)>0.50 .and. rslt2(2)<0.53)) print *,202

    if (.not.(rslt3(1)>0.086 .and. rslt3(1)<0.089)) print *,301
    if (.not.(rslt3(2)>0.50 .and. rslt3(2)<0.53)) print *,302
    print*,"pass"
end
