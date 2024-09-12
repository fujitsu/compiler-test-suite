module m1
integer,target:: t(-3:3,1)=reshape([1,2,3,4,5,6,7],[7,1])
integer,pointer::p(:,:)
type x1
 integer:: t(-3:3,1)
end type
type x0
 type(x1)::z(3,1)
end type
type(x0),target,allocatable:: tt(:,:)
type(x0),pointer:: pt(:,:)
contains
subroutine s1
allocate(pt(3,1))
pt(3,1)%z(3,1)%t=reshape([1,2,3,4,5,6,7],[7,1])
p=>pt(3,1)%z(3,1)%t
if (lbound(p,1)/=-3) print *,121
call chk(pt(3,1)%z(3,1)%t,5)
p=>pt(3,1)%z(3,1)%t(:,:)
if (lbound(p,1)/= 1) print *,122
call chk(pt(3,1)%z(3,1)%t(:,:),6)
allocate(tt(3,1))
tt(3,1)%z(3,1)%t=reshape([1,2,3,4,5,6,7],[7,1])
p=>tt(3,1)%z(3,1)%t
if (lbound(p,1)/=-3) print *,111
call chk(tt(3,1)%z(3,1)%t,3)
p=>tt(3,1)%z(3,1)%t(:,:)
if (lbound(p,1)/= 1) print *,112
call chk(tt(3,1)%z(3,1)%t(:,:),4)
p=>t
if (lbound(p,1)/=-3) print *,101
call chk(t,1)
p=>t(:,:)
if (lbound(p,1)/= 1) print *,102
call chk(t(:,:),2)
end subroutine
subroutine chk(pp,n)
integer,pointer,intent(in),contiguous::pp(:,:)
select case (n)
case(1)
if (lbound(pp,1)/=-3) print *,1011
case(2)
if (lbound(pp,1)/= 1) print *,1012
case(3)
if (lbound(pp,1)/=-3) print *,1013
case(4)
if (lbound(pp,1)/= 1) print *,1014
case(5)
if (lbound(pp,1)/=-3) print *,1015
case(6)
if (lbound(pp,1)/= 1) print *,1016
case default
 print *,9999
end select
end subroutine
end
use m1
call s1
print *,'pass'
end
