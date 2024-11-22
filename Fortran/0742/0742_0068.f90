module m1
type a
  integer ::a1
  integer,allocatable::a2(:)
end type
integer::i1=1
type (a),allocatable::x0(:,:,:),y0(:,:,:)
type (a),allocatable::x1(:,:,:),y1(:,:,:)
type (a),allocatable::x2(:,:,:),y2(:,:,:)
logical,dimension(6)::mask
logical,parameter::t=.true.,f=.false.
integer::k1=1,k2=2,k3=3
interface operator(-)
module procedure p1
end interface
integer,dimension(6,6),parameter::ma=reshape((/(ix,ix=1,36)/),(/6,6/))
contains
function p1(w)
type(a),intent(in)::w(:,:,:)
type(a)::p1(1,size(w),1)
do i=1,size(w)
 if (.not.allocated(w(1,i,1)%a2))write(6,*) "NG"
 allocate(p1(1,i,1)%a2(6))
 do j=1,size(w(1,i,1)%a2)
   p1(1,i,1)%a2(j)=-w(1,i,1)%a2(j)
 end do
end do
end function
subroutine set(x,y)
type (a),allocatable::x(:,:,:),y(:,:,:)
if (allocated(x))deallocate(x)
if (allocated(y))deallocate(y)
allocate(x(1,6,1),y(1,6,1))
m=0
do i=1,6
 if (allocated(x(1,i,1)%a2))write(6,*) "NG"
 allocate(x(1,i,1)%a2(6))
 do j=1,6
   m=m+1
   x(1,i,1)%a2(j)=m
 end do
end do
y=-x
end subroutine
function prt(w)
type(a),intent(in)::w(:,:,:)
integer,allocatable::prt(:)
allocate(prt(size(w)*size(w(1,1,1)%a2)))
m=0
do i=1,size(w)
 do j=1,size(w(1,i,1)%a2)
   m=m+1
   prt(m)=w(1,i,1)%a2(j)
 end do
end do
if (size(prt)/=m)write(6,*) "NG"
end function
end
use m1
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (ii=i1:1)
x0(ii,2:,ii)=y0(i1,:5,ii)
x1(ii,2:,ii)=y1(i1,:5,ii)
x2(ii,2:,ii)=y2(i1,:5,ii)
end forall
if(any(prt(x0)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma/)))write(6,*) "NG"
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (ii=i1:5,ii==1)
x0(ii,2:,ii)=y0(i1,:5,ii)
x1(ii,2:,ii)=y1(i1,:5,ii)
x2(ii,2:,ii)=y2(i1,:5,ii)
end forall
if(any(prt(x0)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma/)))write(6,*) "NG"
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (ii=1:5,ii==3)
x0(1,ii-1:,ii-2)=y0(1,:ii+2,ii-2)
x1(1,ii-1:,ii-2)=y1(1,:ii+2,ii-2)
x2(1,ii-1:,ii-2)=y2(1,:ii+2,ii-2)
end forall
if(any(prt(x0)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma/)))write(6,*) "NG"
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (ii=i1:5,ii==3)
x0(ii-2,ii-1:,i1:ii-2)=y0(ii-2,:ii+2,i1:ii-2)
x1(ii-2,ii-1:,i1:ii-2)=y1(ii-2,:ii+2,i1:ii-2)
x2(ii-2,ii-1:,i1:ii-2)=y2(ii-2,:ii+2,i1:ii-2)
end forall
if(any(prt(x0)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,1),-ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma/)))write(6,*) "NG"
print *,'pass'
end