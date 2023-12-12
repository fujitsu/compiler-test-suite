program pro
interface
  subroutine sub
  end subroutine
end interface
call sub
end program pro

subroutine sub
real*4 :: rslt1=BESSEL_Y1(1.0_4)
real*8 :: rslt2=BESSEL_Y1(1.0_8)
real*16:: rslt3=BESSEL_Y1(1.0_16)

    if(.not.(rslt1<-0.780 .and. rslt1>-0.784)) print*,101
    if(.not.(rslt2<-0.780 .and. rslt2>-0.784)) print*,102
    if(.not.(rslt3<-0.780 .and. rslt3>-0.784)) print*,103
    print *,"pass"
end subroutine

