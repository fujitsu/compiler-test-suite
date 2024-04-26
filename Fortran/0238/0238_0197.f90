subroutine s1
parameter (zz=real(z'40400000',kind=4))
if (abs(zz                      -3.0)>0.00001)print *,100
if (abs(real(z'40400000',kind=4)-3.0)>0.00001)print *,101
if (abs(cmplx(z'40400000',z'40400000')-(3,3))>0.01111)print *,102
if (ior(z'40400000',3)==0)print *,103

end
call s1
print *,'pass'
end
