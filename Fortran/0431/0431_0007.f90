module m1
integer,target:: t2(-3:3,2)=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
integer,target:: t1(-3:3)=reshape([1,2,3,4,5,6,7],[7])
integer,contiguous,pointer::p2(:,:)
integer,contiguous,pointer::p1(:)
type x1
 integer:: t2(-3:3,2)
 integer:: t1(-3:3)
 integer,pointer,contiguous:: p2(:,:)
 integer,pointer,contiguous:: p1(:)
end type
type x0
 type(x1)::z(1,3)
end type
type(x0),target,allocatable:: tt(:,:)
type(x0),pointer:: pt(:,:)
contains
subroutine s1
do n=1,3
allocate(pt(1,3),tt(1,3))
pt(1,3)%z(1,3)%t1=reshape([1,2,3,4,5,6,7],[7])
tt(1,3)%z(1,3)%t1=[1,2,3,4,5,6,7]
tt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
pt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
p1=>tt(1,3)%z(1,3)%t1
if (lbound(p1,1)/=-3) print *,111
call chk(tt(1,3)%z(1,3)%t1,1)
if (any(tt(1,3)%z(1,3)%t1/=0)) print *,8001
tt(1,3)%z(1,3)%t1=[1,2,3,4,5,6,7]
call chk(pt(1,3)%z(1,3)%t1,1)
if (any(pt(1,3)%z(1,3)%t1/=0)) print *,8002
pt(1,3)%z(1,3)%t1=[1,2,3,4,5,6,7]
call chk(tt(1,3)%z(1,3)%t1(:),2)
if (any(tt(1,3)%z(1,3)%t1/=0)) print *,8003
tt(1,3)%z(1,3)%t1=[1,2,3,4,5,6,7]
call chk(pt(1,3)%z(1,3)%t1(:),2)
if (any(pt(1,3)%z(1,3)%t1/=0)) print *,8004
pt(1,3)%z(1,3)%t1=[1,2,3,4,5,6,7]
p1=>tt(1,3)%z(1,3)%t2(:,2)
if (lbound(p1,1)/= 1) print *,112
call chk(tt(1,3)%z(1,3)%t2(:,2),4)
if (any(tt(1,3)%z(1,3)%t2(:,2)/=0)) print *,8005
tt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
call chk(pt(1,3)%z(1,3)%t2(:,2),4)
if (any(pt(1,3)%z(1,3)%t2(:,2)/=0)) print *,8006
pt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
p1=>t1
if (lbound(p1,1)/=-3) print *,101
call chk(t1,1)
if (any(t1/=0)) print *,8007
t1=[1,2,3,4,5,6,7]
call chk(t1(:),2)
if (any(t1/=0)) print *,8008
t1=[1,2,3,4,5,6,7]
p1=>t2(:,2)
if (lbound(p1,1)/= 1) print *,102
call chk(t2(:,2),4)
if (any(t2(:,2)/=0)) print *,8009
t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
allocate(p1(-3:3))
p1=reshape([1,2,3,4,5,6,7],[7])
call chk(p1(:),2)
if (any(p1/=0)) print *,8010
p1=[1,2,3,4,5,6,7]
call chk(p1(:),2)
if (any(p1/=0)) print *,8011
p1=[1,2,3,4,5,6,7]
allocate(p2(-3:3,2))
p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
call chk(p2(:,2),4)
if (any(p2(:,2)/=0)) print *,8012
p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
allocate(tt(1,3)%z(1,3)%p1(-3:3))
tt(1,3)%z(1,3)%p1=[1,2,3,4,5,6,7]
call chk(tt(1,3)%z(1,3)%p1   ,1)
if (any(tt(1,3)%z(1,3)%p1/=0)) print *,8012
tt(1,3)%z(1,3)%p1=[1,2,3,4,5,6,7]
call chk(tt(1,3)%z(1,3)%p1(:),2)
if (any(tt(1,3)%z(1,3)%p1/=0)) print *,8013
tt(1,3)%z(1,3)%p1=[1,2,3,4,5,6,7]
allocate(tt(1,3)%z(1,3)%p2(-3:3,2))
tt(1,3)%z(1,3)%p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
call chk(tt(1,3)%z(1,3)%p2(:,2),4)
if (any(tt(1,3)%z(1,3)%p2(:,2)/=0)) print *,8014
tt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
deallocate(tt)
end do
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
pp=0

end subroutine
end
use m1
call s1
print *,'pass'
end
