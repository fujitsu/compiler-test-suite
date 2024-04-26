complex(kind=2),parameter::c2_1= CMPLX(15.5_2,kind=2)
complex(kind=2),parameter::c2_2= CMPLX(15.5_4,kind=2)
complex(kind=2),parameter::c2_3= CMPLX(15.5_8,kind=2)

complex(kind=4),parameter::c4_1= CMPLX(15.5_2,kind=4)
complex(kind=8),parameter::c8= CMPLX(15.5_2,kind=8)
complex(kind=16),parameter::c16= CMPLX(15.5_2,kind=16)

complex(kind=2),parameter::c2_6= CMPLX(15_1,kind=2)
complex(kind=2),parameter::c2_7= CMPLX(15_2,kind=2)
complex(kind=2),parameter::c2_8= CMPLX(15_4,kind=2)
complex(kind=2),parameter::c2_9= CMPLX(c2_1%re,kind=2)

complex(kind=4)::c4

if(c4_1 /= (15.500,0.000))print*,"101"
if(c8 /= (15.500,0.00))print*,"102"
if(c16 /= (15.500,0.00))print*,"103"
c4=c2_1
if(c4 /= (15.500,0.000))print*,"104"
c4=c2_2
if(c4 /= (15.500,0.000))print*,"105"
c4=c2_3
if(c4 /= (15.500,0.000))print*,"106"

c4=c2_6
if(c4 /= (15.000,0.000))print*,"109"
c4=c2_7
if(c4 /= (15.000,0.000))print*,"110"
c4=c2_8
if(c4 /= (15.000,0.000))print*,"111"
c4=c2_9
if(c4 /= (15.500,0.000))print*,"112"


print*,"PASS"
end
