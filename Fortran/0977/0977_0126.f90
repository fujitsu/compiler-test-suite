real(4),parameter::a1=z'3f800000'
real(4),parameter::a2=z'40000000'
real(8),parameter::b1=z'3f800000'
real(8),parameter::b2=z'40000000'
if (abs( cmplx(b1         ,b2,kind=8) - &
         cmplx(z'3f800000',z'40000000',kind=8)) > 0.001) write(6,*) "NG"
print *,'pass'
end
