module m1
integer,target:: t2(-3:3,2)=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
integer,target:: t1(-3:3)=reshape([1,2,3,4,5,6,7],[7])
integer,target:: t0=1
integer,contiguous,pointer::p2(:,:)
integer,contiguous,pointer::p1(:)
integer,pointer::p0
type x1
 integer:: t2(-3:3,2)
 integer:: t1(-3:3)
 integer:: t0
 integer,pointer,contiguous:: p2(:,:)
 integer,pointer,contiguous:: p1(:)
 integer,pointer:: p0
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
tt(1,3)%z(1,3)%t0=1
pt(1,3)%z(1,3)%t0=1
tt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
pt(1,3)%z(1,3)%t2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
p1=>tt(1,3)%z(1,3)%t1
p0=>tt(1,3)%z(1,3)%t0
if (lbound(p1,1)/=-3) print *,111
call chk(tt(1,3)%z(1,3)%t1(-3),1)
call chk(pt(1,3)%z(1,3)%t0,1)
p1=>tt(1,3)%z(1,3)%t2(:,2)
if (lbound(p1,1)/= 1) print *,112
call chk(tt(1,3)%z(1,3)%t2(-3,1),4)
call chk(pt(1,3)%z(1,3)%t2(-3,1),4)
p1=>t1
if (lbound(p1,1)/=-3) print *,101
call chk(t1(-3),1)
call chk(t0,1)
p1=>t2(:,2)
if (lbound(p1,1)/= 1) print *,102
call chk(t2(-3,1),4)
allocate(p1(-3:3))
p1=reshape([1,2,3,4,5,6,7],[7])
call chk(p1(-3),2)
allocate(p2(-3:3,2))
p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
call chk(p2(-3,1),4)
allocate(tt(1,3)%z(1,3)%p1(-3:3))
tt(1,3)%z(1,3)%p1=[1,2,3,4,5,6,7]
allocate(tt(1,3)%z(1,3)%p0)
tt(1,3)%z(1,3)%p0=1
call chk(tt(1,3)%z(1,3)%p1(-3)   ,1)
call chk(tt(1,3)%z(1,3)%p0      ,1)
tt(1,3)%z(1,3)%p1=[1,2,3,4,5,6,7]
call chk(tt(1,3)%z(1,3)%p1(-3),2)
allocate(tt(1,3)%z(1,3)%p2(-3:3,2))
tt(1,3)%z(1,3)%p2=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14],[7,2])
call chk(tt(1,3)%z(1,3)%p2(-3,1),4)
deallocate(tt)
end do
end subroutine
subroutine chk(pp,n)
integer,pointer,intent(in)::pp
if (pp/=1) print *,204,n
end subroutine
end
use m1
call s1
print *,'pass'
end
