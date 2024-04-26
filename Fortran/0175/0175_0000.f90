real:: r(2)
complex ::c,cc(2)=1.0
r=1
c=sum( cmplx( r,0.0 ) )
if (abs(real(c)-2)>0.00001) print *,101
if (    imag(c)/= 0     ) print *,102
c=sum( cmplx( r,r(1)+1.0 ) )
if (abs(real(c)-2)>0.00001) print *,111
if (abs(imag(c)-4)>0.00001) print *,112
c=sum( cmplx( r,r ) )
if (abs(real(c)-2)>0.00001) print *,121
if (abs(imag(c)-2)>0.00001) print *,122
c=sum( cmplx( r,r+1 ) )
if (abs(real(c)-2)>0.00001) print *,131
if (abs(imag(c)-4)>0.00001) print *,132
c=sum( cmplx( r+1.0,0.0 ) )
if (abs(real(c)-4)>0.00001) print *,201
if (    imag(c)/= 0     ) print *,202
c=sum( cmplx( r+1.0,r(1)+1.0 ) )
if (abs(real(c)-4)>0.00001) print *,211
if (abs(imag(c)-4)>0.00001) print *,212
c=sum( cmplx( r+1.0,r ) )
if (abs(real(c)-4)>0.00001) print *,221
if (abs(imag(c)-2)>0.00001) print *,222
c=sum( cmplx( r+1.0,r+1 ) )
if (abs(real(c)-4)>0.00001) print *,231
if (abs(imag(c)-4)>0.00001) print *,232
c=sumx( cmplx( r(1)+1.0,0.0 ) )
if (abs(real(c)-4)>0.00001) print *,301
if (    imag(c)/= 0     ) print *,302
c=sumx( cmplx( r(1)+1.0,r(1)+1.0 ) )
if (abs(real(c)-4)>0.00001) print *,311
if (abs(imag(c)-4)>0.00001) print *,312
c=sum( cmplx( r(1)+1.0,r ) )
if (abs(real(c)-4)>0.00001) print *,321
if (abs(imag(c)-2)>0.00001) print *,322
c=sum( cmplx( r(1)+1.0,r+1 ) )
if (abs(real(c)-4)>0.00001) print *,331
if (abs(imag(c)-4)>0.00001) print *,332
c=sumx( cmplx( 1.0,0.0 ) )
if (abs(real(c)-2)>0.00001) print *,401
if (    imag(c)/= 0     ) print *,402
c=sumx( cmplx( 1.0,r(1)+1.0 ) )
if (abs(real(c)-2)>0.00001) print *,411
if (abs(imag(c)-4)>0.00001) print *,412
c=sum( cmplx( 1.0,r ) )
if (abs(real(c)-2)>0.00001) print *,421
if (abs(imag(c)-2)>0.00001) print *,422
c=sum( cmplx( 1.0,r+1 ) )
if (abs(real(c)-2)>0.00001) print *,431
if (abs(imag(c)-4)>0.00001) print *,432
c=sum( cmplx( r ) )
if (abs(real(c)-2)>0.00001) print *,1121
if (    imag(c)/= 0     ) print *,1122
c=sum( cmplx( r+1.0 ) )
if (abs(real(c)-4)>0.00001) print *,1131
if (    imag(c)/= 0     ) print *,1132
c=sumx( cmplx( r(1) ) )
if (abs(real(c)-2)>0.00001) print *,1421
if (    imag(c)/= 0     ) print *,1422
c=sumx( cmplx( r(1)+1.0 ) )
if (abs(real(c)-4)>0.00001) print *,1151
if (    imag(c)/= 0     ) print *,1152
c=sum( cmplx( cc ) )
if (abs(real(c)-2)>0.00001) print *,2121
if (    imag(c)/= 0     ) print *,2122
c=sumx( cmplx( cc(1) ) )
if (abs(real(c)-2)>0.00001) print *,3121
if (    imag(c)/= 0     ) print *,3122
call ttt
print *,'pass'
contains
complex function sumx( c )
complex c
sumx= c + c
end function
end
subroutine ttt
complex*8, parameter::a(8) = (/(1.0_4, 11.0_4), (2.0_4, 10.0_4), (3.0_4, 9.0_4), (4.0_4, 8.0_4) , &
                               (5.0_4,  7.0_4), (6.0_4,  6.0_4), (7.0_4, 5.0_4), (8.0_4, 4.0_4)/)
real*8, parameter::b(8) = (/21.0_8, 22.0_8, 23.0_8, 24.0_8, &
                            25.0_8, 26.0_8, 27.0_8, 28.0_8/)
complex*8::c = dot_product(a,b)
complex*8::d
integer::e = kind(dot_product(a,b))
d = dot_product(a,b)
if (abs(c-d) > 0.0001)then
print*, '??? (Error: C->C) ???'
else
endif

call check(e, kind(dot_product(a,b)))
end
subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine
