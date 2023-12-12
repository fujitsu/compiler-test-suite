program pro
 real,parameter :: x1(2)=(/1.0,2.0/)
 real(kind=8),parameter :: x2(2)=(/1.0,2.0/)
 real(kind=16),parameter :: x3(2)=(/1.0,2.0/)
 real:: rslt1(2)  = BESSEL_J0(x1)
 real(kind=8):: rslt2(2)  = BESSEL_J0(x2)
 real(kind=16):: rslt3(2)  = BESSEL_J0(x3)

    if (.not.(rslt1(1)>0.75 .and. rslt1(1)<0.78)) print *,101
    if (.not.(rslt1(2)>0.20 .and. rslt1(2)<0.25)) print *,102

    if (.not.(rslt2(1)>0.75 .and. rslt2(1)<0.78)) print *,101
    if (.not.(rslt2(2)>0.20 .and. rslt2(2)<0.25)) print *,102

    if (.not.(rslt3(1)>0.75 .and. rslt3(1)<0.78)) print *,101
    if (.not.(rslt3(2)>0.20 .and. rslt3(2)<0.25)) print *,102

    print*,"pass"

end
