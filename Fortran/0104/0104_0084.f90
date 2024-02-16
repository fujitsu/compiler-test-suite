complex(kind=8) c
complex(kind=8),parameter::RES=(-12.00000000000000D0,16.00000000000000D0)
complex(kind=8),parameter::GOS=(  0.00000000000005D0, 0.00000000000005D0)
call sub(c)
c=c**2.0D0
if ((abs(real(c)-real(RES)).le.real(GOS)) .and. (abs(aimag(c)-aimag(RES)).le.aimag(GOS))) then
  print *,"OK"
else
  print *,"NG ",c
endif
end
subroutine sub(c)
complex(kind=8) c
c = (2.0, 4.0)
end subroutine
