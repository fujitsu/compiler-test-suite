real:: r(2),rr(3)
complex ::c
r=1
rr(::2)=1
c=sum( cmplx( rr(::2) ,kind=8) )
if (abs(real(c)-2)>0.00001) print *,201
if (    imag(c)/= 0     ) print *,202
c=sum( cmplx( r +1.0 ,kind=8) )
if (abs(real(c)-4)>0.00001) print *,211
if (    imag(c)/= 0     ) print *,212
c=sum( cmplx( r  ,kind=8) )
if (abs(real(c)-2)>0.00001) print *,221
if (    imag(c)/= 0     ) print *,222
c=    cmplx( rr(1) ,kind=8) 
if (abs(real(c)-1)>0.00001) print *,301
if (    imag(c)/= 0     ) print *,302
c=     cmplx( r(1) +1.0 ,kind=8) 
if (abs(real(c)-2)>0.00001) print *,311
if (    imag(c)/= 0     ) print *,312
c=     cmplx( r(1)  ,kind=8) 
if (abs(real(c)-1)>0.00001) print *,321
if (    imag(c)/= 0     ) print *,322
print *,'pass'
end
