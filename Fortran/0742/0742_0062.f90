module m1
type a
  integer ::a1
  integer,allocatable::a2(:)
end type
type (a),allocatable::x0(:),y0(:)
type (a),allocatable::x1(:),y1(:)
type (a),allocatable::x2(:),y2(:)
logical,dimension(6)::mask
logical,parameter::t=.true.,f=.false.
integer::k1=1,k2=2,k3=3
interface operator(-)
module procedure p1
end interface
integer,dimension(6,6),parameter::ma=reshape((/(ix,ix=1,36)/),(/6,6/))
contains
function p1(w)
type(a),intent(in)::w(:)
type(a)::p1(size(w))
do i=1,size(w)
 if (.not.allocated(w(i)%a2))write(6,*) "NG"
 allocate(p1(i)%a2(6))
 do j=1,size(w(i)%a2)
   p1(i)%a2(j)=-w(i)%a2(j)
 end do
end do
end function
subroutine set(x,y)
type (a),allocatable::x(:),y(:)
if (allocated(x))deallocate(x)
if (allocated(y))deallocate(y)
allocate(x(6),y(6))
m=0
do i=1,6
 if (allocated(x(i)%a2))write(6,*) "NG"
 allocate(x(i)%a2(6))
 do j=1,6
   m=m+1
   x(i)%a2(j)=m
 end do
end do
y=-x
end subroutine
function prt(w)
type(a),intent(in)::w(:)
integer,allocatable::prt(:)
allocate(prt(size(w)*size(w(1)%a2)))
m=0
do i=1,size(w)
 do j=1,size(w(i)%a2)
   m=m+1
   prt(m)=w(i)%a2(j)
 end do
end do
if (size(prt)/=m)write(6,*) "NG"
end function
end
use m1
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (ii=1:5)
x0(ii+1)=x0(ii)
y0(ii+1)=y0(ii)
x1(ii+1)=x1(ii)
y1(ii+1)=y1(ii)
x2(ii+1)=x2(ii)
y2(ii+1)=y2(ii)
end forall
if(any(prt(x0)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
print *,'pass'
end
