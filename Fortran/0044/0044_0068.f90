program pro
complex, parameter::x1=(1.7389, 1.2115)
complex*16, parameter::x2=(1.7389, 1.2115)
complex*32, parameter::x3=(1.7389, 1.2115)
complex:: rslt1=ATANH(x=x1-(1,1))
complex*16::rslt2=ATANH(x2-(1,1))
complex*32::rslt3=ATANH(x3-(1,1))
if( .not.((real(rslt1) > 0.81).and.(real(rslt1) <0.83))) print*,101
if( .not.((imag(rslt1) > 0.39).and.(imag(rslt1) <0.41))) print*,102
if( .not.((real(rslt2) > 0.81).and.(real(rslt2) <0.83))) print*,103
if( .not.((imag(rslt2) > 0.39).and.(imag(rslt2) <0.41))) print*,104
if( .not.((real(rslt3) > 0.81).and.(real(rslt3) <0.83))) print*,105
if( .not.((imag(rslt3) > 0.39).and.(imag(rslt3) <0.41))) print*,106
print *,"pass"
end

