program pro
interface
  subroutine sub
  end subroutine
end interface
call sub
end program pro

subroutine sub
real*4 :: rslt1=ATANH(0.4355667_4)
real*8 :: rslt2=ATANH(0.4355667_8)
real*16 :: rslt3=ATANH(0.4355667_16)

  if(.not.(real(rslt1)>0.45 .and. real(rslt1)<0.47)) print *,101

  if(.not.(real(rslt2)>0.45 .and. real(rslt2)<0.47)) print *,102

  if(.not.(real(rslt3)>0.45 .and. real(rslt3)<0.47)) print *,103

print *,"pass"
end subroutine

