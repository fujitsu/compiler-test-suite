call s1
call s2
print *,'pass'
contains
subroutine s1
real,parameter::r1=1.0
real(8),parameter::r2=1.0_8
real(16),parameter::r3=1.0_16
real,parameter::res1=bessel_y0(r1)
real(8),parameter::res2=bessel_y0(r2)
real(16),parameter::res3=bessel_y0(r3)

if(res1/=bessel_y0(r1)) print *,'err1'
if(res2/=bessel_y0(r2)) print *,'err2'
if(res3/=bessel_y0(r3)) print *,'err3'
end subroutine
 subroutine s2
real,parameter::r1=1.0
real(8),parameter::r2=1.0_8
real(16),parameter::r3=1.0_16
real,parameter::res1=bessel_y1(x=r1)
real(8),parameter::res2=bessel_y1(r2)
real(16),parameter::res3=bessel_y1(r3)

if(res1/=bessel_y1(x=r1)) print *,'err1'
if(res2/=bessel_y1(r2)) print *,'err2'
if(res3/=bessel_y1(r3)) print *,'err3'
end subroutine

end
