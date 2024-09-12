module m1
implicit none
integer,parameter::nnn=3
end
subroutine s1
use m1
implicit none
integer,parameter::z=4
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
if (v%w01/=v%w11)print *,101,v%w01,v%w11
if (abs(v%w02-v%w12)>0.00001)print *,102,v%w02,v%w12
if (v%w03/=v%w13)print *,103,v%w02,v%w13
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
type x
   complex(z) w01,w02,w03
   complex(z) w11,w12,w13
end type
type (x)::v
a2=a1
b2=b1
v=x(a1*b1,a1/b1,a1**b1, a2*b2,a2/b2,a2**b2)
if (v%w01/=v%w11)print *,2101,v%w01,v%w11
if ((abs(real(v%w02)-real(v%w12)) > 0.00001) .or. (abs(aimag(v%w02)-aimag(v%w12)) > 0.00001)) then
   print *,2102,v%w02,v%w12
endif
if (v%w03/=v%w13)print *,2103,v%w02,v%w13
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
call s3
print *,'pass'
end
