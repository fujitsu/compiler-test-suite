program pro
complex, parameter::x1=(0.6703, 0.2457)
complex(kind=8), parameter::x2=(0.6703, 0.2457)
complex(kind=16), parameter::x3=(0.6703, 0.2457)

  complex:: rslt1=ACOSH(x=x1)
  complex(kind=8)::rslt2=ACOSH(x2)
  complex(kind=16)::rslt3=ACOSH(x3)
  if( .not.((real(rslt1) > 0.30).and.(real(rslt1) <0.33))) print*,101
  if( .not.((imag(rslt1) > 0.86).and.(imag(rslt1) <0.88))) print*,102
  if( .not.((real(rslt2) > 0.30).and.(real(rslt2) <0.33))) print*,103
  if( .not.((imag(rslt2) > 0.86).and.(imag(rslt2) <0.88))) print*,104
  if( .not.((real(rslt3) > 0.30).and.(real(rslt3) <0.33))) print*,105
  if( .not.((imag(rslt3) > 0.86).and.(imag(rslt3) <0.88))) print*,106

print *,"pass"
end

