use, intrinsic :: iso_c_binding
IMPLICIT NONE

integer          ,target :: i1(1,2,3)
integer(kind=1)  ,target :: i2(2,2,2)
integer(kind=2)  ,target :: i3(3,2,1)
integer(kind=8)  ,target :: i4(3,1,2)
real             ,target :: r1(1,2,3)
real(kind=8)     ,target :: r2(2,2,2)
real(kind=16)    ,target :: r3(3,2,1)
complex          ,target :: cm1(1,2,3)
complex(kind=8)  ,target :: cm2(2,2,2)
complex(kind=16) ,target :: cm3(3,2,1)
logical          ,target :: l1(1,2,3)
logical(kind=1)  ,target :: l2(2,2,2)
logical(kind=2)  ,target :: l3(3,2,1)
logical(kind=8)  ,target :: l4(3,1,2)
character        ,target :: ch1(1,2,3)
character(kind=4),target :: ch2(2,2,2)

type(c_ptr)::cc1

cc1=c_loc(x=i1)
cc1=c_loc(x=i2)
cc1=c_loc(x=i3)
cc1=c_loc(x=i4)
cc1=c_loc(x=r1)
cc1=c_loc(x=r2)
cc1=c_loc(x=r3)
cc1=c_loc(x=cm1)
cc1=c_loc(x=cm2)
cc1=c_loc(x=cm3)
cc1=c_loc(x=l2)
cc1=c_loc(x=ch1)
cc1=c_loc(x=i1(:,1:1,1))
cc1=c_loc(x=i2(:,1:1,1))
cc1=c_loc(x=i3(:,1:1,1))
cc1=c_loc(x=i4(:,1:1,1))
cc1=c_loc(x=r1(:,1:1,1))
cc1=c_loc(x=r2(:,1:1,1))
cc1=c_loc(x=r3(:,1:1,1))
cc1=c_loc(x=cm1(:,1:1,1))
cc1=c_loc(x=cm2(:,1:1,1))
cc1=c_loc(x=cm3(:,1:1,1))
cc1=c_loc(x=l2(:,1:1,1))
cc1=c_loc(x=ch1(:,1:1,1))
cc1=c_loc(x=i1(1,1,1))
cc1=c_loc(x=i2(1,1,1))
cc1=c_loc(x=i3(1,1,1))
cc1=c_loc(x=i4(1,1,1))
cc1=c_loc(x=r1(1,1,1))
cc1=c_loc(x=r2(1,1,1))
cc1=c_loc(x=r3(1,1,1))
cc1=c_loc(x=cm1(1,1,1))
cc1=c_loc(x=cm2(1,1,1))
cc1=c_loc(x=cm3(1,1,1))
cc1=c_loc(x=l1(1,1,1))
cc1=c_loc(x=l2(1,1,1))
cc1=c_loc(x=l3(1,1,1))
cc1=c_loc(x=l4(1,1,1))
cc1=c_loc(x=ch1(1,1,1))
cc1=c_loc(x=ch2(1,1,1))

print *,'pass'

end
