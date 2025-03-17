module m1
 type t
    integer,pointer::a(:,:,:)
 end type
integer,target::a(5,5,5)=reshape((/(k,k=1,5*5*5)/),(/5,5,5/))
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
do i6=1,2
do i5=1,2
do i4=1,2
do i3=1,2
do i2=1,2
do i1=1,2
im=im+1
var%a=> a(i1:5:i2,i3:5:i4,i5:5:i6)
call s(var,im)
end do
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
 k1=5; k2=5; k3=5
 j1=1; j2=1; j3=1
 n1=1; n2=1; n3=1
case (3)
 k1=4; k2=5; k3=5
 j1=2; j2=1; j3=1
 n1=1; n2=1; n3=1
case (4)
 k1=3; k2=5; k3=5
 j1=1; j2=1; j3=1
 n1=2; n2=1; n3=1
case (5)
 k1=2; k2=5; k3=5
 j1=2; j2=1; j3=1
 n1=2; n2=1; n3=1
case (6)
 k1=5; k2=4; k3=5
 j1=1; j2=2; j3=1
 n1=1; n2=1; n3=1
case (7)
 k1=4; k2=4; k3=5
 j1=2; j2=2; j3=1
 n1=1; n2=1; n3=1
case (8)
 k1=3; k2=4; k3=5
 j1=1; j2=2; j3=1
 n1=2; n2=1; n3=1
case (9)
 k1=2; k2=4; k3=5
 j1=2; j2=2; j3=1
 n1=2; n2=1; n3=1
case (10)
 k1=5; k2=3; k3=5
 j1=1; j2=1; j3=1
 n1=1; n2=2; n3=1
case (11)
 k1=4; k2=3; k3=5
 j1=2; j2=1; j3=1
 n1=1; n2=2; n3=1
case (12)
 k1=3; k2=3; k3=5
 j1=1; j2=1; j3=1
 n1=2; n2=2; n3=1
case (13)
 k1=2; k2=3; k3=5
 j1=2; j2=1; j3=1
 n1=2; n2=2; n3=1
case (14)
 k1=5; k2=2; k3=5
 j1=1; j2=2; j3=1
 n1=1; n2=2; n3=1
case (15)
 k1=4; k2=2; k3=5
 j1=2; j2=2; j3=1
 n1=1; n2=2; n3=1
case (16)
 k1=3; k2=2; k3=5
 j1=1; j2=2; j3=1
 n1=2; n2=2; n3=1
case (17)
 k1=2; k2=2; k3=5
 j1=2; j2=2; j3=1
 n1=2; n2=2; n3=1
case (18)
 k1=5; k2=5; k3=4
 j1=1; j2=1; j3=2
 n1=1; n2=1; n3=1
case (19)
 k1=4; k2=5; k3=4
 j1=2; j2=1; j3=2
 n1=1; n2=1; n3=1
case (20)
 k1=3; k2=5; k3=4
 j1=1; j2=1; j3=2
 n1=2; n2=1; n3=1
case (21)
 k1=2; k2=5; k3=4
 j1=2; j2=1; j3=2
 n1=2; n2=1; n3=1
case (22)
 k1=5; k2=4; k3=4
 j1=1; j2=2; j3=2
 n1=1; n2=1; n3=1
case (23)
 k1=4; k2=4; k3=4
 j1=2; j2=2; j3=2
 n1=1; n2=1; n3=1
case (24)
 k1=3; k2=4; k3=4
 j1=1; j2=2; j3=2
 n1=2; n2=1; n3=1
case (25)
 k1=2; k2=4; k3=4
 j1=2; j2=2; j3=2
 n1=2; n2=1; n3=1
case (26)
 k1=5; k2=3; k3=4
 j1=1; j2=1; j3=2
 n1=1; n2=2; n3=1
case (27)
 k1=4; k2=3; k3=4
 j1=2; j2=1; j3=2
 n1=1; n2=2; n3=1
case (28)
 k1=3; k2=3; k3=4
 j1=1; j2=1; j3=2
 n1=2; n2=2; n3=1
case (29)
 k1=2; k2=3; k3=4
 j1=2; j2=1; j3=2
 n1=2; n2=2; n3=1
case (30)
 k1=5; k2=2; k3=4
 j1=1; j2=2; j3=2
 n1=1; n2=2; n3=1
case (31)
 k1=4; k2=2; k3=4
 j1=2; j2=2; j3=2
 n1=1; n2=2; n3=1
case (32)
 k1=3; k2=2; k3=4
 j1=1; j2=2; j3=2
 n1=2; n2=2; n3=1
case (33)
 k1=2; k2=2; k3=4
 j1=2; j2=2; j3=2
 n1=2; n2=2; n3=1
case (34)
 k1=5; k2=5; k3=3
 j1=1; j2=1; j3=1
 n1=1; n2=1; n3=2
case (35)
 k1=4; k2=5; k3=3
 j1=2; j2=1; j3=1
 n1=1; n2=1; n3=2
case (36)
 k1=3; k2=5; k3=3
 j1=1; j2=1; j3=1
 n1=2; n2=1; n3=2
case (37)
 k1=2; k2=5; k3=3
 j1=2; j2=1; j3=1
 n1=2; n2=1; n3=2
case (38)
 k1=5; k2=4; k3=3
 j1=1; j2=2; j3=1
 n1=1; n2=1; n3=2
case (39)
 k1=4; k2=4; k3=3
 j1=2; j2=2; j3=1
 n1=1; n2=1; n3=2
case (40)
 k1=3; k2=4; k3=3
 j1=1; j2=2; j3=1
 n1=2; n2=1; n3=2
case (41)
 k1=2; k2=4; k3=3
 j1=2; j2=2; j3=1
 n1=2; n2=1; n3=2
case (42)
 k1=5; k2=3; k3=3
 j1=1; j2=1; j3=1
 n1=1; n2=2; n3=2
case (43)
 k1=4; k2=3; k3=3
 j1=2; j2=1; j3=1
 n1=1; n2=2; n3=2
case (44)
 k1=3; k2=3; k3=3
 j1=1; j2=1; j3=1
 n1=2; n2=2; n3=2
case (45)
 k1=2; k2=3; k3=3
 j1=2; j2=1; j3=1
 n1=2; n2=2; n3=2
case (46)
 k1=5; k2=2; k3=3
 j1=1; j2=2; j3=1
 n1=1; n2=2; n3=2
case (47)
 k1=4; k2=2; k3=3
 j1=2; j2=2; j3=1
 n1=1; n2=2; n3=2
case (48)
 k1=3; k2=2; k3=3
 j1=1; j2=2; j3=1
 n1=2; n2=2; n3=2
case (49)
 k1=2; k2=2; k3=3
 j1=2; j2=2; j3=1
 n1=2; n2=2; n3=2
case (50)
 k1=5; k2=5; k3=2
 j1=1; j2=1; j3=2
 n1=1; n2=1; n3=2
case (51)
 k1=4; k2=5; k3=2
 j1=2; j2=1; j3=2
 n1=1; n2=1; n3=2
case (52)
 k1=3; k2=5; k3=2
 j1=1; j2=1; j3=2
 n1=2; n2=1; n3=2
case (53)
 k1=2; k2=5; k3=2
 j1=2; j2=1; j3=2
 n1=2; n2=1; n3=2
case (54)
 k1=5; k2=4; k3=2
 j1=1; j2=2; j3=2
 n1=1; n2=1; n3=2
case (55)
 k1=4; k2=4; k3=2
 j1=2; j2=2; j3=2
 n1=1; n2=1; n3=2
case (56)
 k1=3; k2=4; k3=2
 j1=1; j2=2; j3=2
 n1=2; n2=1; n3=2
case (57)
 k1=2; k2=4; k3=2
 j1=2; j2=2; j3=2
 n1=2; n2=1; n3=2
case (58)
 k1=5; k2=3; k3=2
 j1=1; j2=1; j3=2
 n1=1; n2=2; n3=2
case (59)
 k1=4; k2=3; k3=2
 j1=2; j2=1; j3=2
 n1=1; n2=2; n3=2
case (60)
 k1=3; k2=3; k3=2
 j1=1; j2=1; j3=2
 n1=2; n2=2; n3=2
case (61)
 k1=2; k2=3; k3=2
 j1=2; j2=1; j3=2
 n1=2; n2=2; n3=2
case (62)
 k1=5; k2=2; k3=2
 j1=1; j2=2; j3=2
 n1=1; n2=2; n3=2
case (63)
 k1=4; k2=2; k3=2
 j1=2; j2=2; j3=2
 n1=1; n2=2; n3=2
case (64)
 k1=3; k2=2; k3=2
 j1=1; j2=2; j3=2
 n1=2; n2=2; n3=2
case (65)
 k1=2; k2=2; k3=2
 j1=2; j2=2; j3=2
 n1=2; n2=2; n3=2
case default
 return
end select
jj=k1*k2*k3
if (any(z(1:jj)/=(/a(j1:5:n1,j2:5:n2,j3:5:n3)/)))print *,'error',i
end
