module m1
type a
  integer ::a1
  integer,allocatable::a2(:)
end type
type (a),allocatable::x(:),y(:)
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
logical mm(1)
mm=.true.
call set(x,y)
forall (ii=1:5)
where(mm)
x(ii+1:ii+1)=x(ii:ii)
end where
end forall
if(any(prt(x)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
forall (ii=1:5)
where(mm)
y(ii+1:ii+1)=y(ii:ii)
end where
end forall
if(any(prt(y)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
call set(x,y)
forall (ii=1:5)
where(mm)
x(ii+1:ii+1)=x(ii:ii)
end where
end forall
if(any(prt(x)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
forall (ii=1:5)
where(mm)
y(ii+1:ii+1)=y(ii:ii)
end where
end forall
if(any(prt(y)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
mm=.false.
call set(x,y)
forall (ii=1:5)
where(mm)
x(ii+1:ii+1)=x(ii:ii)
end where
end forall
if(any(prt(x)/=(/ma(:,:)/)))write(6,*) "NG"
forall (ii=1:5)
where(mm)
y(ii+1:ii+1)=y(ii:ii)
end where
end forall
if(any(prt(y)/=-(/ma(:,:)/)))write(6,*) "NG"
call set(x,y)
forall (ii=1:5)
where(mm)
x(ii+1:ii+1)=x(ii:ii)
end where
end forall
if(any(prt(x)/=(/ma(:,:)/)))write(6,*) "NG"
forall (ii=1:5)
where(mm)
y(ii+1:ii+1)=y(ii:ii)
end where
end forall
if(any(prt(y)/=-(/ma(:,:)/)))write(6,*) "NG"
print *,'pass'
end
