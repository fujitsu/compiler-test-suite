complex(kind=2)::c2_1,c2_2=(15.5_2,20.5_2)
complex(kind=4)::c4_1=(15.5,20.5)
complex(kind=8)::c8_1=(15.5,20.5)
complex(kind=16)::c16_1=(15.5,20.5)
real*2::r2_2=15.5_2
real*2::r2_1=20.5_2
real*4::r4_1=15.5
real*8::r8_1=15.5
real*16::r16_1=15.5
integer::i4=50
integer*2::i2=25


c2_1=CMPLX(c2_2,kind=2)
if(c2_1 /= (15.500,20.500))print*,"101"
c2_1=CMPLX(c4_1,kind=2)
if(c2_1 /= (15.500,20.500))print*,"102"
c2_1=CMPLX(c8_1,kind=2)
if(c2_1 /= (15.500,20.500))print*,"103"
c2_1=CMPLX(c16_1,kind=2)
if(c2_1 /= (15.500,20.500))print*,"104"


c4_1=CMPLX(c2_1,kind=4)
if(c4_1 /= (15.500,20.500))print*,"105"
c4_1=CMPLX(c2_1)
if(c4_1 /= (15.500,20.500))print*,"106"
c8_1=CMPLX(c2_1,kind=8)
if(c8_1 /= (15.500,20.500))print*,"107"
c16_1=CMPLX(c2_1,kind=16)
if(c16_1 /= (15.500,20.500))print*,"108"


c2_1=CMPLX(r2_2,r2_1,kind=2)
if(c2_1 /= (15.500,20.500))print*,"109"
c2_1=CMPLX(r4_1,r4_1,kind=2)
if(c2_1 /= (15.500,15.500))print*,"110"
c2_1=CMPLX(r8_1,r8_1,kind=2)
if(c2_1 /= (15.500,15.500))print*,"111"
c2_1=CMPLX(r16_1,r16_1,kind=2)
if(c2_1 /= (15.500,15.500))print*,"112"
c2_1=CMPLX(i4,i2,kind=2)
if(c2_1 /= (50,25))print*,"113"

if(kind(CMPLX(i4,i2,kind=2)) /= 2 )print*,"114"
if(kind(CMPLX(r8_1,r8_1,kind=2)) /= 2 )print*,"115"
if(kind(CMPLX(r4_1,r4_1,kind=2)) /= 2 )print*,"116"
if(kind(CMPLX(r2_2,r2_1,kind=2)) /= 2 )print*,"117"

print*,"PASS"
end
