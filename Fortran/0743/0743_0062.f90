type fx; sequence;integer(1)::fx1; end type
integer(1)::ax1=11
integer(2)::ax2=12
integer(4)::ax3=13
integer(8)::ax4=14
logical(1)::bx1=.true.
logical(2)::bx2=.true.
logical(4)::bx3=.true.
logical(8)::bx4=.true.
real(4)::cx1=21
real(8)::cx2=22
real(16)::cx3=23
complex(4)::dx1=(31,-31)
complex(8)::dx2=(32,-32)
complex(16)::dx3=(33,-33)
character(1)::ex1='a'
character(2502)::ex2='a'//repeat('x',2500)//'b'
type(fx)::fx1=fx(41)
integer(1),parameter::a01=11
integer(2),parameter::a02=12
integer(4),parameter::a03=13
integer(8),parameter::a04=14
logical(1),parameter::b01=.true.
logical(2),parameter::b02=.true.
logical(4),parameter::b03=.true.
logical(8),parameter::b04=.true.
real(4),parameter::c01=21
real(8),parameter::c02=22
real(16),parameter::c03=23
complex(4),parameter::d01=(31,-31)
complex(8),parameter::d02=(32,-32)
complex(16),parameter::d03=(33,-33)
character(1),parameter::e01='a'
character(2502),parameter::e02='a'//repeat('x',2500)//'b'
type(fx),parameter::f01=fx(41)
do ii=1,3
 call fc1(f01)
 call fc1(fx(41))
end do
if (f01%fx1/=fx1%fx1)write(6,*) "NG"
if (f01%fx1/=41)write(6,*) "NG"
do ii=1,3
 call ec2(e02)
end do
if (e02/=ex2)write(6,*) "NG"
do ii=1,3
 call ec1(e01)
 call ec1('a')
end do
if (e01/=ex1)write(6,*) "NG"
if ('a'/=ex1)write(6,*) "NG"
do ii=1,3
 call dc1(d01)
 call dc1((31._4,-31._4))
end do
if (abs(d01-dx1)>0.0001)write(6,*) "NG"
if (abs((31_4,-31_4)-dx1)>0.0001)write(6,*) "NG"
do ii=1,3
 call dc2(d02)
 call dc2((32._8,-32._8))
end do
if (abs(d02-dx2)>0.0001)write(6,*) "NG"
if (abs((32._8,-32._8)-dx2)>0.0001)write(6,*) "NG"
do ii=1,3
 call dc3(d03)
 call dc3((33._16,-33._16))
end do
if (abs(d03-dx3)>0.0001)write(6,*) "NG"
if (abs((33_8,-33_8)-dx3)>0.0001)write(6,*) "NG"
do ii=1,3
 call sc1(c01)
 call sc1(21._4)
end do
if (abs(c01-cx1)>0.0001)write(6,*) "NG"
if (abs(21._4-cx1)>0.0001)write(6,*) "NG"
do ii=1,3
 call sc2(c02)
 call sc2(22._8)
end do
if (abs(c02-cx2)>0.0001)write(6,*) "NG"
if (abs(22._8-cx2)>0.0001)write(6,*) "NG"
do ii=1,3
 call sc3(c03)
 call sc3(23._16)
end do
if (abs(c03-cx3)>0.0001)write(6,*) "NG"
if (abs(23._16-cx3)>0.0001)write(6,*) "NG"
do ii=1,3
 call sb1(b01)
 call sb1(.true._1)
end do
if (b01.neqv.bx1)write(6,*) "NG"
if (.true._1.neqv.bx1)write(6,*) "NG"
do ii=1,3
 call sb2(b02)
 call sb2(.true._2)
end do
if (b02.neqv.bx2)write(6,*) "NG"
if (.true._2.neqv.bx2)write(6,*) "NG"
do ii=1,3
 call sb3(b03)
 call sb3(.true._4)
end do
if (b03.neqv.bx3)write(6,*) "NG"
if (.true._4.neqv.bx3)write(6,*) "NG"
do ii=1,3
 call sb4(b04)
 call sb4(.true._8)
end do
if (b04.neqv.bx4)write(6,*) "NG"
if (.true._8.neqv.bx4)write(6,*) "NG"
do ii=1,3
 call sa1(a01)
 call sa1(11_1)
end do
if (a01/=ax1)write(6,*) "NG"
if (11_1/=ax1)write(6,*) "NG"
do ii=1,3
 call sa2(a02)
 call sa2(12_2)
end do
if (a02/=ax2)write(6,*) "NG"
if (12_2/=ax2)write(6,*) "NG"
do ii=1,3
 call sa3(a03)
 call sa3(13_4)
end do
if (a03/=ax3)write(6,*) "NG"
if (13_4/=ax3)write(6,*) "NG"
do ii=1,3
 call sa4(a04)
 call sa4(14_8)
end do
if (a04/=ax4)write(6,*) "NG"
if (14_8/=ax4)write(6,*) "NG"
print *,'pass'
end
subroutine fc1(fx1)
type fx; sequence;integer(1)::fx1; end type
type(fx)::fx1
if (fx1%fx1/=41)write(6,*) "NG"
end
subroutine sa1(x)
integer(1)::x
if (11/=x)write(6,*) "NG"
x=99
end
subroutine sa2(x)
integer(2)::x
if (12/=x)write(6,*) "NG"
x=99
end
subroutine sa3(x)
integer(4)::x
if (13/=x)write(6,*) "NG"
x=99
end
subroutine sa4(x)
integer(8)::x
if (14/=x)write(6,*) "NG"
x=99
end
subroutine sb1(x)
logical(1)::x
if (.not.x)write(6,*) "NG"
x=.false.
end
subroutine sb2(x)
logical(2)::x
if (.not.x)write(6,*) "NG"
x=.false.
end
subroutine sb3(x)
logical(4)::x
if (.not.x)write(6,*) "NG"
x=.false.
end
subroutine sb4(x)
logical(8)::x
if (.not.x)write(6,*) "NG"
x=.false.
end
subroutine sc1(x)
real(4)::x
if (abs(21._4-x)>0.0001)write(6,*) "NG"
x=999
end
subroutine sc2(x)
real(8)::x
if (abs(22.-x)>0.0001)write(6,*) "NG"
x=999
end
subroutine sc3(x)
real(16)::x
if (abs(23-x)>0.0001)write(6,*) "NG"
x=999
end
subroutine dc1(x)
complex(4)::x
if (abs((31_4,-31_4)-x)>0.0001)write(6,*) "NG"
x=9999
end
subroutine dc2(x)
complex(8)::x
if (abs((32,-32)-x)>0.0001)write(6,*) "NG"
x=9999
end
subroutine dc3(x)
complex(16)::x
if (abs((33,-33)-x)>0.0001)write(6,*) "NG"
x=9999
end
subroutine ec1(x)
character(len=*)::x
if ('a'/=x)write(6,*) "NG"
if (len(x)/=1)write(6,*) "NG"
x='?'
end
subroutine ec2(x)
character(len=*)::x
if ('a'//repeat('x',2500)//'b'/=x)write(6,*) "NG"
if (len(x)/=2502)write(6,*) "NG"
x='?'
end
