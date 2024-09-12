module m1
integer,target:: t2(-3:3,2)=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
integer,target:: t1(-3:3)=reshape([1,2,3,4,5,6,7],[7])
integer,target,allocatable::p2(:,:)
integer,target,allocatable::p1(:)
type x1
 integer:: t2(-3:3,2)
 integer:: t1(-3:3)
 integer,allocatable:: p2(:,:)
 integer,allocatable:: p1(:)
end type
type x0
 type(x1)::z(1,3)
end type
type(x0),target,allocatable:: tt(:,:)
type(x0),pointer:: pt(:,:)
contains
subroutine s1
allocate(p1(-3:3))
p1=reshape([1,2,3,4,5,6,7],[7])
allocate(pt(1,3),tt(1,3))
allocate(p2(-3:3,2))
p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
pt(1,3)%z(1,3)%t1=reshape([1,2,3,4,5,6,7],[7])
tt(1,3)%z(1,3)%t1=[1,2,3,4,5,6,7]
tt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
pt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
call chk(tt(1,3)%z(1,3)%t1,1)
call chk(pt(1,3)%z(1,3)%t1,1)
call chk(tt(1,3)%z(1,3)%t1(:),2)
call chk(pt(1,3)%z(1,3)%t1(:),2)
call chk(tt(1,3)%z(1,3)%t2(:,2),4)
call chk(pt(1,3)%z(1,3)%t2(:,2),4)
call chk(t1,1)
call chk(t1(:),2)
call chk(t2(:,2),4)
call chk(p1(:),2)
call chk(p1(:),2)
call chk(p2(:,2),4)
allocate(tt(1,3)%z(1,3)%p1(-3:3))
tt(1,3)%z(1,3)%p1=[1,2,3,4,5,6,7]
call chk(tt(1,3)%z(1,3)%p1   ,1)
call chk(tt(1,3)%z(1,3)%p1(:),2)
allocate(tt(1,3)%z(1,3)%p2(-3:3,2))
tt(1,3)%z(1,3)%p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
call chk(tt(1,3)%z(1,3)%p2(:,2),4)
end subroutine
subroutine chk(pp,n)
integer,pointer,intent(in),contiguous::pp(:)
select case (n)
case(1)
if (lbound(pp,1)/=-3) print *,1011
if (any(pp/=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7]))) print *,201

case(2)
if (lbound(pp,1)/= 1) print *,1012
if (any(pp/=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7]))) print *,202
case(3)
if (lbound(pp,1)/=-3) print *,1013
if (any(pp/=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7]))) print *,203
case(4)
if (lbound(pp,1)/= 1) print *,1014
if (any(pp/=reshape([8,9,10,11,12,13,14],[7]))) print *,204
case default
 print *,9999
end select

end subroutine
end
use m1
call s1
print *,'pass'
end