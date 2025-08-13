call s1
call s2
print *,'pass'
end
subroutine s1
real(4)::pi=3.1415926535897932384626433832795
complex(4)::c(100000)
real(4)::y(100000)
call random_number(harvest=y)
c=cmplx(y,y,4)
do i=1,100000
if(abs(real(ASIN(c(i))))>(pi/2)) print *,'err1'
if(abs(ASIN(y(i)))>(pi/2)) print *,'err2'
if(abs(real(ASIN(cmplx(i))))>(pi/2)) print *,'err3'

if(abs(aimag(atanh(c(i))))>(pi/2)) print *,'err4'

if(abs(aimag(asinh(c(i))))>(pi/2)) print *,'err4'
if(abs(aimag(asinh(cmplx(i))))>(pi/2)) print *,'err5'

if(abs(aimag(acosh(c(i))))>(pi)) print *,'err4'
if(abs(aimag(acosh(cmplx(i))))>(pi)) print *,'err5'
enddo
end
subroutine s2
real(8)::pi=3.14159265358979323846264338327950288419716939937510582097494450_8
complex(8)::c(100000)
real(8)::y(100000)
call random_number(harvest=y)
c=cmplx(y,y,8)
do i=1,100000
if(abs(real(ASIN(c(i))))>(pi/2)) print *,'err11'
if(abs(ASIN(y(i)))>(pi/2)) print *,'err12'
if(abs(dreal(ASIN(dcmplx(i))))>(pi/2)) print *,'err13'

if(abs(aimag(atanh(c(i))))>(pi/2)) print *,'err14'

if(abs(aimag(asinh(c(i))))>(pi/2)) print *,'err16'
if(abs(aimag(asinh(dcmplx(i))))>(pi/2)) print *,'err17'

if(abs(aimag(acosh(c(i))))>(pi)) print *,'err16'
if(abs(aimag(acosh(dcmplx(i))))>(pi)) print *,'err17'
enddo
end
