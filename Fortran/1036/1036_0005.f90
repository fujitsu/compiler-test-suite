module m1
 type t
    integer,pointer::a(:,:,:,:,:)
 end type
integer,target::a(5,5,5,5,5)=reshape((/(k,k=1,5*5*5*5*5)/),(/5,5,5,5,5/))
contains
subroutine s(x,i)
type (t)::x
call sub(x%a,i)
end subroutine
end
use m1
type (t)::var
var%a=> a
call s(var,1)
im=1
do i5=1,2
do i4=1,2
do i3=1,2
do i2=1,2
do i1=1,2
im=im+1
var%a=> a(:5:i1,:5:i2,:5:i3,:5:i4,:5:i5)
call s(var,im)
end do
end do
end do
end do
end do
print *,'pass'
end
subroutine sub(z,i)
use m1
integer z(*)
select case(i)
case (1,2)
 k1=5; k2=5; k3=5; k4=5; k5=5
 n1=1; n2=1; n3=1; n4=1; n5=1
case (3)
 k1=3; k2=5; k3=5; k4=5; k5=5
 n1=2; n2=1; n3=1; n4=1; n5=1
case (4)
 k1=5; k2=3; k3=5; k4=5; k5=5
 n1=1; n2=2; n3=1; n4=1; n5=1
case (5)
 k1=3; k2=3; k3=5; k4=5; k5=5
 n1=2; n2=2; n3=1; n4=1; n5=1
case (6)
 k1=5; k2=5; k3=3; k4=5; k5=5
 n1=1; n2=1; n3=2; n4=1; n5=1
case (7)
 k1=3; k2=5; k3=3; k4=5; k5=5
 n1=2; n2=1; n3=2; n4=1; n5=1
case (8)
 k1=5; k2=3; k3=3; k4=5; k5=5
 n1=1; n2=2; n3=2; n4=1; n5=1
case (9)
 k1=3; k2=3; k3=3; k4=5; k5=5
 n1=2; n2=2; n3=2; n4=1; n5=1
case (10)
 k1=5; k2=5; k3=5; k4=3; k5=5
 n1=1; n2=1; n3=1; n4=2; n5=1
case (11)
 k1=3; k2=5; k3=5; k4=3; k5=5
 n1=2; n2=1; n3=1; n4=2; n5=1
case (12)
 k1=5; k2=3; k3=5; k4=3; k5=5
 n1=1; n2=2; n3=1; n4=2; n5=1
case (13)
 k1=3; k2=3; k3=5; k4=3; k5=5
 n1=2; n2=2; n3=1; n4=2; n5=1
case (14)
 k1=5; k2=5; k3=3; k4=3; k5=5
 n1=1; n2=1; n3=2; n4=2; n5=1
case (15)
 k1=3; k2=5; k3=3; k4=3; k5=5
 n1=2; n2=1; n3=2; n4=2; n5=1
case (16)
 k1=5; k2=3; k3=3; k4=3; k5=5
 n1=1; n2=2; n3=2; n4=2; n5=1
case (17)
 k1=3; k2=3; k3=3; k4=3; k5=5
 n1=2; n2=2; n3=2; n4=2; n5=1
case (18)
 k1=5; k2=5; k3=5; k4=5; k5=3
 n1=1; n2=1; n3=1; n4=1; n5=2
case (19)
 k1=3; k2=5; k3=5; k4=5; k5=3
 n1=2; n2=1; n3=1; n4=1; n5=2
case (20)
 k1=5; k2=3; k3=5; k4=5; k5=3
 n1=1; n2=2; n3=1; n4=1; n5=2
case (21)
 k1=3; k2=3; k3=5; k4=5; k5=3
 n1=2; n2=2; n3=1; n4=1; n5=2
case (22)
 k1=5; k2=5; k3=3; k4=5; k5=3
 n1=1; n2=1; n3=2; n4=1; n5=2
case (23)
 k1=3; k2=5; k3=3; k4=5; k5=3
 n1=2; n2=1; n3=2; n4=1; n5=2
case (24)
 k1=5; k2=3; k3=3; k4=5; k5=3
 n1=1; n2=2; n3=2; n4=1; n5=2
case (25)
 k1=3; k2=3; k3=3; k4=5; k5=3
 n1=2; n2=2; n3=2; n4=1; n5=2
case (26)
 k1=5; k2=5; k3=5; k4=3; k5=3
 n1=1; n2=1; n3=1; n4=2; n5=2
case (27)
 k1=3; k2=5; k3=5; k4=3; k5=3
 n1=2; n2=1; n3=1; n4=2; n5=2
case (28)
 k1=5; k2=3; k3=5; k4=3; k5=3
 n1=1; n2=2; n3=1; n4=2; n5=2
case (29)
 k1=3; k2=3; k3=5; k4=3; k5=3
 n1=2; n2=2; n3=1; n4=2; n5=2
case (30)
 k1=5; k2=5; k3=3; k4=3; k5=3
 n1=1; n2=1; n3=2; n4=2; n5=2
case (31)
 k1=3; k2=5; k3=3; k4=3; k5=3
 n1=2; n2=1; n3=2; n4=2; n5=2
case (32)
 k1=5; k2=3; k3=3; k4=3; k5=3
 n1=1; n2=2; n3=2; n4=2; n5=2
case (33)
 k1=3; k2=3; k3=3; k4=3; k5=3
 n1=2; n2=2; n3=2; n4=2; n5=2
case default
print *,'???',i
 return
end select
jj=k1*k2*k3*k4*k5
if (any(z(1:jj)/=(/a(:5:n1,:5:n2,:5:n3,:5:n4,:5:n5)/)))print *,'error',i
end
