complex(kind=2)::c2_1
complex(kind=4)::c4_1
complex(kind=8)::c8_1
complex(kind=16)::c16_1



c2_1=CMPLX((1.5_4,1.5_4),kind=2)
if(c2_1 /= (1.500,1.500))print*,"101"
c2_1=CMPLX((1.5_4,1.5_4),kind=2)
if(c2_1 /= (1.500,1.500))print*,"102"
c2_1=CMPLX((1.5_8,1.5_8),kind=2)
if(c2_1 /= (1.500,1.500))print*,"103"
c2_1=CMPLX((1.5_16,1.5_16),kind=2)
if(c2_1 /= (1.500,1.500))print*,"104"


c2_1=CMPLX((1.5_2,1.5_2),kind=2)
if(c2_1 /= (1.500,1.500))print*,"105"
c4_1=CMPLX((1.5_2,1.5_2),kind=4)
if(c4_1 /= (1.500,1.500))print*,"106"
c8_1=CMPLX((1.5_2,1.5_2),kind=8)
if(c4_1 /= (1.500,1.500))print*,"106"
c16_1=CMPLX((1.5_2,1.5_2),kind=16)
if(c4_1 /= (1.500,1.500))print*,"106"

print*,"PASS"
end
