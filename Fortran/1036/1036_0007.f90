module m1
 type t
    integer,pointer::a1(:,:)
    integer,pointer::a2(:,:)
    integer,pointer::a3(:,:)
 end type
integer,target::a1(3,3)=reshape((/(k,k=1,9)/),(/3,3/))
integer,target::a2(3,3)=reshape((/(k,k=11,19)/),(/3,3/))
integer,target::a3(3,3)=reshape((/(k,k=21,29)/),(/3,3/))
contains
subroutine s(x,i)
type (t)::x
call sub(x%a1,x%a2,x%a3,i)
end subroutine
end
use m1
type (t)::var
var%a1=> a1
var%a2=> a2
var%a3=> a3
call s(var,1)
im=1
do i6=1,2
do i5=1,2
do i4=1,2
do i3=1,2
do i2=1,2
do i1=1,2
im=im+1
var%a1=> a1(::i1,::i2)
var%a2=> a2(::i3,::i4)
var%a3=> a3(::i5,::i6)
call s(var,im)
end do
end do
end do
end do
end do
end do
print *,'pass'
end
subroutine sub(z1,z2,z3,i)
use m1
integer,dimension(*):: z1,z2,z3
select case(i)
case (1,2)
j1=9;j2=9;j3=9
n1=1;n2=1;n3=1;n4=1;n5=1;n6=1
case (3)
j1=6;j2=9;j3=9
n1=2;n2=1;n3=1;n4=1;n5=1;n6=1
case (4)
j1=6;j2=9;j3=9
n1=1;n2=2;n3=1;n4=1;n5=1;n6=1
case (5)
j1=4;j2=9;j3=9
n1=2;n2=2;n3=1;n4=1;n5=1;n6=1
case (6)
j1=9;j2=6;j3=9
n1=1;n2=1;n3=2;n4=1;n5=1;n6=1
case (7)
j1=6;j2=6;j3=9
n1=2;n2=1;n3=2;n4=1;n5=1;n6=1
case (8)
j1=6;j2=6;j3=9
n1=1;n2=2;n3=2;n4=1;n5=1;n6=1
case (9)
j1=4;j2=6;j3=9
n1=2;n2=2;n3=2;n4=1;n5=1;n6=1
case (10)
j1=9;j2=6;j3=9
n1=1;n2=1;n3=1;n4=2;n5=1;n6=1
case (11)
j1=6;j2=6;j3=9
n1=2;n2=1;n3=1;n4=2;n5=1;n6=1
case (12)
j1=6;j2=6;j3=9
n1=1;n2=2;n3=1;n4=2;n5=1;n6=1
case (13)
j1=4;j2=6;j3=9
n1=2;n2=2;n3=1;n4=2;n5=1;n6=1
case (14)
j1=9;j2=4;j3=9
n1=1;n2=1;n3=2;n4=2;n5=1;n6=1
case (15)
j1=6;j2=4;j3=9
n1=2;n2=1;n3=2;n4=2;n5=1;n6=1
case (16)
j1=6;j2=4;j3=9
n1=1;n2=2;n3=2;n4=2;n5=1;n6=1
case (17)
j1=4;j2=4;j3=9
n1=2;n2=2;n3=2;n4=2;n5=1;n6=1
case (18)
j1=9;j2=9;j3=6
n1=1;n2=1;n3=1;n4=1;n5=2;n6=1
case (19)
j1=6;j2=9;j3=6
n1=2;n2=1;n3=1;n4=1;n5=2;n6=1
case (20)
j1=6;j2=9;j3=6
n1=1;n2=2;n3=1;n4=1;n5=2;n6=1
case (21)
j1=4;j2=9;j3=6
n1=2;n2=2;n3=1;n4=1;n5=2;n6=1
case (22)
j1=9;j2=6;j3=6
n1=1;n2=1;n3=2;n4=1;n5=2;n6=1
case (23)
j1=6;j2=6;j3=6
n1=2;n2=1;n3=2;n4=1;n5=2;n6=1
case (24)
j1=6;j2=6;j3=6
n1=1;n2=2;n3=2;n4=1;n5=2;n6=1
case (25)
j1=4;j2=6;j3=6
n1=2;n2=2;n3=2;n4=1;n5=2;n6=1
case (26)
j1=9;j2=6;j3=6
n1=1;n2=1;n3=1;n4=2;n5=2;n6=1
case (27)
j1=6;j2=6;j3=6
n1=2;n2=1;n3=1;n4=2;n5=2;n6=1
case (28)
j1=6;j2=6;j3=6
n1=1;n2=2;n3=1;n4=2;n5=2;n6=1
case (29)
j1=4;j2=6;j3=6
n1=2;n2=2;n3=1;n4=2;n5=2;n6=1
case (30)
j1=9;j2=4;j3=6
n1=1;n2=1;n3=2;n4=2;n5=2;n6=1
case (31)
j1=6;j2=4;j3=6
n1=2;n2=1;n3=2;n4=2;n5=2;n6=1
case (32)
j1=6;j2=4;j3=6
n1=1;n2=2;n3=2;n4=2;n5=2;n6=1
case (33)
j1=4;j2=4;j3=6
n1=2;n2=2;n3=2;n4=2;n5=2;n6=1
case (34)
j1=9;j2=9;j3=6
n1=1;n2=1;n3=1;n4=1;n5=1;n6=2
case (35)
j1=6;j2=9;j3=6
n1=2;n2=1;n3=1;n4=1;n5=1;n6=2
case (36)
j1=6;j2=9;j3=6
n1=1;n2=2;n3=1;n4=1;n5=1;n6=2
case (37)
j1=4;j2=9;j3=6
n1=2;n2=2;n3=1;n4=1;n5=1;n6=2
case (38)
j1=9;j2=6;j3=6
n1=1;n2=1;n3=2;n4=1;n5=1;n6=2
case (39)
j1=6;j2=6;j3=6
n1=2;n2=1;n3=2;n4=1;n5=1;n6=2
case (40)
j1=6;j2=6;j3=6
n1=1;n2=2;n3=2;n4=1;n5=1;n6=2
case (41)
j1=4;j2=6;j3=6
n1=2;n2=2;n3=2;n4=1;n5=1;n6=2
case (42)
j1=9;j2=6;j3=6
n1=1;n2=1;n3=1;n4=2;n5=1;n6=2
case (43)
j1=6;j2=6;j3=6
n1=2;n2=1;n3=1;n4=2;n5=1;n6=2
case (44)
j1=6;j2=6;j3=6
n1=1;n2=2;n3=1;n4=2;n5=1;n6=2
case (45)
j1=4;j2=6;j3=6
n1=2;n2=2;n3=1;n4=2;n5=1;n6=2
case (46)
j1=9;j2=4;j3=6
n1=1;n2=1;n3=2;n4=2;n5=1;n6=2
case (47)
j1=6;j2=4;j3=6
n1=2;n2=1;n3=2;n4=2;n5=1;n6=2
case (48)
j1=6;j2=4;j3=6
n1=1;n2=2;n3=2;n4=2;n5=1;n6=2
case (49)
j1=4;j2=4;j3=6
n1=2;n2=2;n3=2;n4=2;n5=1;n6=2
case (50)
j1=9;j2=9;j3=4
n1=1;n2=1;n3=1;n4=1;n5=2;n6=2
case (51)
j1=6;j2=9;j3=4
n1=2;n2=1;n3=1;n4=1;n5=2;n6=2
case (52)
j1=6;j2=9;j3=4
n1=1;n2=2;n3=1;n4=1;n5=2;n6=2
case (53)
j1=4;j2=9;j3=4
n1=2;n2=2;n3=1;n4=1;n5=2;n6=2
case (54)
j1=9;j2=6;j3=4
n1=1;n2=1;n3=2;n4=1;n5=2;n6=2
case (55)
j1=6;j2=6;j3=4
n1=2;n2=1;n3=2;n4=1;n5=2;n6=2
case (56)
j1=6;j2=6;j3=4
n1=1;n2=2;n3=2;n4=1;n5=2;n6=2
case (57)
j1=4;j2=6;j3=4
n1=2;n2=2;n3=2;n4=1;n5=2;n6=2
case (58)
j1=9;j2=6;j3=4
n1=1;n2=1;n3=1;n4=2;n5=2;n6=2
case (59)
j1=6;j2=6;j3=4
n1=2;n2=1;n3=1;n4=2;n5=2;n6=2
case (60)
j1=6;j2=6;j3=4
n1=1;n2=2;n3=1;n4=2;n5=2;n6=2
case (61)
j1=4;j2=6;j3=4
n1=2;n2=2;n3=1;n4=2;n5=2;n6=2
case (62)
j1=9;j2=4;j3=4
n1=1;n2=1;n3=2;n4=2;n5=2;n6=2
case (63)
j1=6;j2=4;j3=4
n1=2;n2=1;n3=2;n4=2;n5=2;n6=2
case (64)
j1=6;j2=4;j3=4
n1=1;n2=2;n3=2;n4=2;n5=2;n6=2
case (65)
j1=4;j2=4;j3=4
n1=2;n2=2;n3=2;n4=2;n5=2;n6=2
case default
return
end select
  if (any((/z1(1:j1),z2(1:j2),z3(1:j3)/)/=(/a1(::n1,::n2),a2(::n3,::n4),a3(::n5,::n6)/)))print *,'error',i
end
