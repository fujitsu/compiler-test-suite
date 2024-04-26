subroutine s1
real(4),parameter::r1 = aimag((-4.0,5.0))
real(4),parameter::r2 = imag((-4.0,5.0))
real(8),parameter::r3 = dimag((-4.0_8,5.0_8))
if(r1/=aimag((-4.0,5.0))) print *,'err1'
if(r2/=imag((-4.0,5.0))) print *,'err2'
if(r3/=dimag((-4.0_8,5.0_8))) print *,'err3'
end
call s1
print *,'pass'
end

