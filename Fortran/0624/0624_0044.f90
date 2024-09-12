module m1
implicit none
integer,parameter::nnn=100
end
subroutine s1
use m1
implicit none
integer,parameter::z=4
real(z),parameter::c=nnn
real(z),parameter::c01=c,c02=c+1
real(z),parameter::c03=c01,c04=c02
complex(z),parameter::a1=(c03,c04)
complex(z),parameter::b1=cmplx(c03+10,c03+20)
complex(z)::a2,b2
a2=a1
b2=b1
if (abs(a1/b1-a2/b2)> 0.00001) print *,1008
if (abs(a1/b1-a2/b2)>0.0001) print *,10081
end
subroutine s2
use m1
implicit none
integer,parameter::z=8
real(z),parameter::c=nnn
real(z),parameter::c01=c-1.2345,c02=c+1.2345
real(z),parameter::c03=c01-c02,c04=c01+c02
complex(z),parameter::a1=(c03,c04)
complex(z),parameter::b1=cmplx(c03+c04,c03-c04)
complex(z)::a2,b2
a2=a1
b2=b1
if (abs(a1/b1-a2/b2)> 0.00001) print *,1008
end
subroutine s3
use m1
implicit none
integer,parameter::z=16
real(z),parameter::c=nnn
real(z),parameter::c01=c-1.2345,c02=c+1.2345
real(z),parameter::c03=c01-c02,c04=c01+c02
complex(z),parameter::a1=(c03,c04)
complex(z),parameter::b1=cmplx(c03+c04,c03-c04)
complex(z)::a2,b2
type x
   complex(z) w01,w02,w03
   complex(z) w11,w12,w13
end type
type (x)::v
a2=a1
b2=b1
v=x(a1*b1,a1/b1,a1**b1, a2*b2,a2/b2,a2**b2)
if (v%w01/=v%w11)print *,3101,v%w01,v%w11
if (v%w02/=v%w12)print *,3102,v%w02,v%w12
if (v%w03/=v%w13)print *,3103,v%w02,v%w13
end
call s1
call s2
print *,'pass'
end
