module m1
type a
  integer ::a1
  integer,allocatable::a2(:)
end type
type (a),allocatable::x0(:,:,:),y0(:,:,:)
type (a),allocatable::x1(:,:,:),y1(:,:,:)
type (a),allocatable::x2(:,:,:),y2(:,:,:)
logical(1),dimension(:,:,:),allocatable::mask
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
i1=1
allocate(mask(1,1,1));mask=.true.
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (jj=1:1,ii=1:5,kk=1:1)
where (mask)
x0(kk:kk,ii+1:ii+1,jj:jj)=x0(kk:kk,ii:ii,jj:jj)
y0(kk:kk,ii+1:ii+1,jj:jj)=y0(kk:kk,ii:ii,jj:jj)
x1(kk:1,ii+1:ii+1,jj:jj)=x1(kk:kk,ii:ii,jj:jj)
y1(kk:1,ii+1:ii+1,jj:jj)=y1(kk:kk,ii:ii,jj:jj)
x2(kk:1,ii+1:ii+1,jj:jj)=x2(kk:kk,ii:ii,jj:jj)
y2(kk:1,ii+1:ii+1,jj:jj)=y2(kk:kk,ii:ii,jj:jj)
end where
end forall
if(any(prt(x0)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (jj=i1:1,ii=i1:5,kk=1:i1)
where (mask)
x0(1:kk,ii+1:ii+1,jj:jj)=x0(1:kk,ii:ii,jj:jj)
y0(1:kk,ii+1:ii+1,jj:jj)=y0(1:kk,ii:ii,jj:jj)
x1(1:kk,ii+1:ii+1,jj:jj)=x1(1:kk,ii:ii,jj:jj)
y1(1:kk,ii+1:ii+1,jj:jj)=y1(1:kk,ii:ii,jj:jj)
x2(1:kk,ii+1:ii+1,jj:jj)=x2(1:kk,ii:ii,jj:jj)
y2(1:kk,ii+1:ii+1,jj:jj)=y2(1:kk,ii:ii,jj:jj)
end where
end forall
if(any(prt(x0)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
call set(x0,y0)
call set(x1,y1)
call set(x2,y2)
forall (jj=i1:1,ii=i1:5,kk=1:i1)
where (.not.mask)
x0(1:kk,ii+1:ii+1,jj:jj)=x0(1:kk,ii:ii,jj:jj)
y0(1:kk,ii+1:ii+1,jj:jj)=y0(1:kk,ii:ii,jj:jj)
x1(1:kk,ii+1:ii+1,jj:jj)=x1(1:kk,ii:ii,jj:jj)
y1(1:kk,ii+1:ii+1,jj:jj)=y1(1:kk,ii:ii,jj:jj)
x2(1:kk,ii+1:ii+1,jj:jj)=x2(1:kk,ii:ii,jj:jj)
y2(1:kk,ii+1:ii+1,jj:jj)=y2(1:kk,ii:ii,jj:jj)
end where
end forall
if(any(prt(x0)/=(/ma(:,:)/)))write(6,*) "NG"
if(any(prt(y0)/=-(/ma(:,:)/)))write(6,*) "NG"
if(any(prt(x1)/=(/ma(:,:)/)))write(6,*) "NG"
if(any(prt(y1)/=-(/ma(:,:)/)))write(6,*) "NG"
if(any(prt(x2)/=(/ma(:,:)/)))write(6,*) "NG"
if(any(prt(y2)/=-(/ma(:,:)/)))write(6,*) "NG"
print *,'pass'
end
