program pro
 real,parameter :: x1(2)=(/1.0,2.0/)
 real(kind=8),parameter :: x2(2)=(/1.0,2.0/)
 real(kind=16),parameter :: x3(2)=(/1.0,2.0/)
 real:: rslt1(2)  = BESSEL_J1(x1)
 real(kind=8):: rslt2(2)  = BESSEL_J1(x2)
 real(kind=16):: rslt3(2)  = BESSEL_J1(x3)

    if (.not.(rslt1(1)>0.43 .and. rslt1(1)<0.46)) print *,101
    if (.not.(rslt1(2)>0.55 .and. rslt1(2)<0.59)) print *,102
    if (.not.(rslt2(1)>0.43 .and. rslt2(1)<0.46)) print *,103
    if (.not.(rslt2(2)>0.55 .and. rslt2(2)<0.59)) print *,104
    if (.not.(rslt3(1)>0.43 .and. rslt3(1)<0.46)) print *,105
    if (.not.(rslt3(2)>0.55 .and. rslt3(2)<0.59)) print *,106
    print*,"pass"
end
