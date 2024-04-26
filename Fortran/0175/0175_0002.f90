real:: r(2),rr(3)
complex ::c(2)
r=1
rr(::2)=1
c=ss( cmplx( rr(::2) ) )
if (abs(real(sum(c))-2)>0.00001) print *,101
if (    imag(sum(c))/= 0     ) print *,102
c=ss( cmplx( r +1.0 ) )
if (abs(sum(real(c))-4)>0.00001) print *,111
if (    sum(imag(c))/= 0     ) print *,112
c=ss( cmplx( r  ) )
if (abs(sum(real(c))-2)>0.00001) print *,121
if (    sum(imag(c))/= 0     ) print *,122

c=st( cmplx( rr(::2) ,kind=8) )
if (abs(sum(real(c))-2)>0.00001) print *,201
if (    sum(imag(c))/= 0     ) print *,202
c=st( cmplx( r +1.0 ,kind=8) )
if (abs(sum(real(c))-4)>0.00001) print *,211
if (    sum(imag(c))/= 0     ) print *,212
c=st( cmplx( r  ,kind=8) )
if (abs(sum(real(c))-2)>0.00001) print *,221
if (    sum(imag(c))/= 0     ) print *,222
c=ss( cmplx( rr(::2) ,kind=4) )
if (abs(sum(real(c))-2)>0.00001) print *,301
if (    sum(imag(c))/= 0     ) print *,302
c=ss( cmplx( r +1.0 ,kind=4) )
if (abs(sum(real(c))-4)>0.00001) print *,311
if (    sum(imag(c))/= 0     ) print *,312
c=ss( cmplx( r  ,kind=4) )
if (abs(sum(real(c))-2)>0.00001) print *,321
if (    sum(imag(c))/= 0     ) print *,322
print *,'pass'
contains
elemental function ss(c)
complex,intent(in):: c
complex           :: ss
ss=c
end function
elemental function st(c)
complex(8),intent(in):: c
complex(8)        :: st
st=c
end function
end
