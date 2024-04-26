complex(kind=2),parameter::c2_1= CMPLX((15.5_2,20.5_2),kind=2)
complex(kind=2),parameter::c2_2= CMPLX((15.5,20.5),kind=2)
complex(kind=2),parameter::c2_3= CMPLX((15.5_8,20.5_8),kind=2)

complex(kind=4),parameter::c4_1= CMPLX((15.5_2,20.5_2),kind=4)
complex(kind=8),parameter::c8= CMPLX((15.5_2,20.5_2),kind=8)
complex(kind=16),parameter::c16= CMPLX((15.5_2,20.5_2),kind=16)

complex(kind=2),parameter::c2_6= CMPLX(15.5_2,20.5_2,kind=2)
complex(kind=2),parameter::c2_7= CMPLX(15.5_4,15.5_4,kind=2)
complex(kind=2),parameter::c2_8= CMPLX(15.5_8,15.5_8,kind=2)
complex(kind=2),parameter::c2_10= CMPLX(50_4,25_2,kind=2)

complex(kind=4)::c4

if(c4_1 /= (15.500,20.500))print*,"101"
if(c8 /= (15.500,20.500))print*,"102"
if(c16 /= (15.500,20.500))print*,"103"

c4=c2_1
if(c4 /= (15.500,20.500))print*,"104"
c4=c2_2
if(c4 /= (15.500,20.500))print*,"105"
c4=c2_3
if(c4 /= (15.500,20.500))print*,"106"




c4=c2_6
if(c4 /= (15.500,20.500))print*,"109"
c4=c2_7
if(c4 /= (15.500,15.500))print*,"110"
c4=c2_8
if(c4 /= (15.500,15.500))print*,"111"
c4=c2_10
if(c4 /= (50,25))print*,"113"


print*,"PASS"
end
