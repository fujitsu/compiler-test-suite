program pro
interface
  subroutine sub
  end subroutine
end interface
call sub
end program pro

subroutine sub
real*4 :: rslt1=LOG_GAMMA(3.0)
real*8 :: rslt2=LOG_GAMMA(3.0_8)
real*16:: rslt3=LOG_GAMMA(3.0_16)

        if(.not.(rslt1>0.68 .and. rslt1<0.70)) print*,101,rslt1
        if(.not.(rslt2>0.68 .and. rslt2<0.70)) print*,102,rslt2
        if(.not.(rslt3>0.68 .and. rslt3<0.70)) print*,103,rslt3

        print *,"pass"
end subroutine
