program pro
interface
  subroutine sub
  end subroutine
end interface
call sub
end program pro

subroutine sub
real*4 :: rslt1=ERFC_SCALED(20.0)
real*8 :: rslt2=ERFC_SCALED(20.0_8)
real*16:: rslt3=ERFC_SCALED(20.0_16)

        if(.not.(rslt1>0.026 .and. rslt1<0.030)) print*,101
        if(.not.(rslt2>0.026 .and. rslt2<0.030)) print*,102
        if(.not.(rslt3>0.026 .and. rslt3<0.030)) print*,103
        print *,"pass"
end subroutine

