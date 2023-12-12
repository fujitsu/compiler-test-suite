program pro
interface
  subroutine sub
  end subroutine
end interface
call sub
end program pro

subroutine sub
real :: rslt1=BESSEL_J1(1.0_4)
real(kind=8) :: rslt2=BESSEL_J1(1.0)
real(kind=16) :: rslt3=BESSEL_J1(1.0_16)
  if(.not.(rslt1>0.43 .and.rslt1<0.46)) print *,101
  if(.not.(rslt2>0.43 .and.rslt2<0.46)) print *,102
  if(.not.(rslt3>0.43 .and.rslt3<0.46)) print *,103
print *,"pass"
end subroutine

