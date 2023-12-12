program pro
interface
  subroutine sub
  end subroutine
end interface
call sub
end program pro

subroutine sub
real*4 :: rslt1=ASINH(1.4355667_4)
real*8 :: rslt2=ASINH(1.4355667_8)
real*16 :: rslt3=ASINH(1.4355667_16)

  if(.not.(real(rslt1)>1.14 .and. real(rslt1)<1.16)) print *,101

  if(.not.(real(rslt2)>1.14 .and. real(rslt2)<1.16)) print *,102

  if(.not.(real(rslt3)>1.14 .and. real(rslt3)<1.16)) print *,103

print *,"pass"
end subroutine

