real(kind=8) a
real(kind=8),parameter::RES=5.656854249492381D0
real(kind=8),parameter::GOS=0.00000000000005D0
call sub(a)
a=a**2.5D0
if (abs(a-RES) <= GOS) then
  print *,"OK"
else
  print *,"NG ",a
endif
end
subroutine sub(a)
real(kind=8) a
a = 2.0
end subroutine
