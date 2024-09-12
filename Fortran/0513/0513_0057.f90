call sss1
call sss2
print *,'pass'
contains
subroutine sss1
integer(1),parameter::i1=1_1
integer(2),parameter::i2=1_2
integer(4),parameter::i4=1_4
integer(8),parameter::i8=1_8

real,parameter::r1=1.0
real(8),parameter::r2=1.0_8
real(16),parameter::r3=1.0_16

real,parameter::res11=bessel_jn(i1,r1)
real,parameter::res12=bessel_jn(i2,r1)
real,parameter::res13=bessel_jn(i4,r1)
real,parameter::res14=bessel_jn(i8,r1)
real(8),parameter::res21=bessel_jn(i1,r2)
real(8),parameter::res22=bessel_jn(i2,r2)
real(8),parameter::res23=bessel_jn(i4,r2)
real(8),parameter::res24=bessel_jn(i8,r2)
real(16),parameter::res31=bessel_jn(i1,r3)
real(16),parameter::res32=bessel_jn(i2,r3)
real(16),parameter::res33=bessel_jn(i4,r3)
real(16),parameter::res34=bessel_jn(i8,r3)

if(res11/=bessel_jn(i1,r1)) print *,'err1'
if(res12/=bessel_jn(i2,r1)) print *,'err2'
if(res13/=bessel_jn(i4,r1)) print *,'err3'
if(res14/=bessel_jn(i8,r1)) print *,'err4'

if(res21/=bessel_jn(i1,r2)) print *,'err1'
if(res22/=bessel_jn(i2,r2)) print *,'err2'
if(res23/=bessel_jn(i4,r2)) print *,'err3'
if(res24/=bessel_jn(i8,r2)) print *,'err4'

if(res31/=bessel_jn(i1,r3)) print *,'err1'
if(res32/=bessel_jn(i2,r3)) print *,'err2'
if(res33/=bessel_jn(i4,r3)) print *,'err3'
if(res34/=bessel_jn(i8,r3)) print *,'err4'

end subroutine
subroutine sss2
integer(1),parameter::i1=1_1
integer(2),parameter::i2=1_2
integer(4),parameter::i4=1_4
integer(8),parameter::i8=1_8

real,parameter::r1=1.0
real(8),parameter::r2=1.0_8
real(16),parameter::r3=1.0_16

real,parameter::res11(1)=bessel_jn(i1,i1,r1)
real,parameter::res12(1)=bessel_jn(i2,i2,r1)
real,parameter::res13(1)=bessel_jn(i4,i4,r1)
real,parameter::res14(1)=bessel_jn(i8,i8,r1)
real(8),parameter::res21(1)=bessel_jn(i1,i1,r2)
real(8),parameter::res22(1)=bessel_jn(i2,i2,r2)
real(8),parameter::res23(1)=bessel_jn(i4,i4,r2)
real(8),parameter::res24(1)=bessel_jn(i8,i8,r2)
real(16),parameter::res31(1)=bessel_jn(i1,i1,r3)
real(16),parameter::res32(1)=bessel_jn(i2,i2,r3)
real(16),parameter::res33(1)=bessel_jn(i4,i4,r3)
real(16),parameter::res34(1)=bessel_jn(i8,i8,r3)

if(any(res11/=bessel_jn(i1,i1,r1))) print *,'err1'
if(any(res12/=bessel_jn(i2,i2,r1))) print *,'err2'
if(any(res13/=bessel_jn(i4,i4,r1))) print *,'err3'
if(any(res14/=bessel_jn(i8,i8,r1))) print *,'err4'

if(any(res21/=bessel_jn(i1,i1,r2))) print *,'err1'
if(any(res22/=bessel_jn(i2,i2,r2))) print *,'err2'
if(any(res23/=bessel_jn(i4,i4,r2))) print *,'err3'
if(any(res24/=bessel_jn(i8,i8,r2))) print *,'err4'

if(any(res31/=bessel_jn(i1,i1,r3))) print *,'err1'
if(any(res32/=bessel_jn(i2,i2,r3))) print *,'err2'
if(any(res33/=bessel_jn(i4,i4,r3))) print *,'err3'
if(any(res34/=bessel_jn(i8,i8,r3))) print *,'err4'

end subroutine
end
