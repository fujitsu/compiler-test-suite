subroutine s1
real,parameter::a01(2)=atan2(1.0,[1.0,1.0])
real,parameter::a02(2)=atan2(1.0,[1.0,-1.0])
real,parameter::a03(2)=atan2(-1.0,[1.0,-1.0])
real,parameter::a04(2)=atan2(-1.0,real([1.0_16,-1.0_16]))
real      b01(2),b02(2),b03(2),b04(2),b06(2,4,30)
integer,parameter::k01(1)=shape(atan2(-1.0,[1.0,-1.0]))
integer          ::n01(1),n02(3)
real,parameter::a05(2:3,4:7,-9:20)=-1
real,parameter::a06(2,4,30)=atan2(-1.0,a05)
integer,parameter::k02(3)=ubound(atan2(-1.0,a05))
b01=atan2(1.0,[1.0,1.0])
b02=atan2(1.0,[1.0,-1.0])
b03=atan2(-1.0,[1.0,-1.0])
b04=atan2(-1.0,real([1.0_16,-1.0_16]))
b06=atan2(-1.0,a05)
if (any(a01/=b01))print *,101
if (any(a02/=b02))print *,102
if (any(a03/=b03))print *,103
if (any(abs(a04-b04)>0.0001))print *,104
if (any(a06/=b06))print *,105
n01=shape(atan2(-1.0,[1.0,-1.0]))
if (any(n01/=k01))print *,105
n02=ubound(atan2(-1.0,a05))
if (any(n02/=k02))print *,106
end
call s1
print *,'pass'
end
