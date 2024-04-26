complex(kind=2)::c2_1
complex(kind=4)::c4_1
complex(kind=8)::c8_1
complex(kind=16)::c16_1
real*2::r2_2=10.5_2,r2_1=20.5_2
real*4::r4_1=15.5
real*8::r8_1=15.5_8
real*16::r16_1=15.5_16


c2_1=CMPLX(r2_2,kind=2)
if(c2_1 /= (10.500,0.0))print*,'101'
c4_1=CMPLX(r2_2,kind=4)
if(c2_1 /= (10.500,0.0))print*,'102'
c8_1=CMPLX(r2_2,kind=8)
if(c2_1 /= (10.500,0.0))print*,'103'
c16_1=CMPLX(r2_2,kind=16)
if(c2_1 /= (10.500,0.0))print*,'104'


c4_1=CMPLX(r2_2,r2_1,kind=2)
if(c4_1 /= (10.500,20.500))print*,'105'
c4_1=CMPLX(r2_2,r2_1,kind=4)
if(c4_1 /= (10.500,20.500))print*,'105'
c4_1=CMPLX(r2_2,r2_1)
if(c4_1 /= (10.500,20.500))print*,'106'
c8_1=CMPLX(r2_2,r2_1,kind=8)
if(c8_1 /= (10.500,20.500))print*,'107'
c16_1=CMPLX(r2_2,r2_1,kind=16)
if(c16_1 /= (10.500,20.500))print*,'108'

c4_1=CMPLX(r2_2,r8_1,kind=4)
if(c4_1 /= (10.500,15.500))print*,'109'
c4_1=CMPLX(r2_2,r4_1)
if(c4_1 /= (10.500,15.500))print*,'110'
c8_1=CMPLX(r16_1,r2_2,kind=8)
if(c8_1 /= (15.500,10.500))print*,'111'
c16_1=CMPLX(r2_2,r8_1,kind=16)
if(c16_1 /= (10.500,15.500))print*,'112'
print*,"PASS"
end
