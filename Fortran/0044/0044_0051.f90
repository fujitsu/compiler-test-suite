program pro
complex, parameter::x1=(0.6703, 0.2457)
complex(kind=8), parameter::x2=(0.6703, 0.2457)
complex(kind=16), parameter::x3=(0.6703, 0.2457)
  complex:: rslt1=ASINH(x=x1)
  complex(kind=8)::rslt2=ASINH(x2)
  complex(kind=16)::rslt3=ASINH(x3)
  if( .not.((real(rslt1) > 0.6).and.(real(rslt1) <0.8))) print*,101
  if( .not.((imag(rslt1) > 0.2).and.(imag(rslt1) <0.4))) print*,102
  if( .not.((real(rslt2) > 0.6).and.(real(rslt2) <0.8))) print*,103
  if( .not.((imag(rslt2) > 0.2).and.(imag(rslt2) <0.4))) print*,104
  if( .not.((real(rslt3) > 0.6).and.(real(rslt3) <0.8))) print*,105
  if( .not.((imag(rslt3) > 0.2).and.(imag(rslt3) <0.4))) print*,106

print *,"pass"
end

