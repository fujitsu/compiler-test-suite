module m1
type a
  integer ::a1
  integer,allocatable::a2(:)
end type
type (a),allocatable::x(:,:,:),y(:,:,:)
logical(2),dimension(:),allocatable::mask
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
call set(x,y)
i1=1
allocate(mask(1:1));mask=.true.
forall (jj=1:1,ii=1:5,kk=1:1)
where(mask(jj:kk))
x(jj,ii+1:ii+1,kk)=x(jj,ii:ii,kk)
end where
end forall
if(any(prt(x)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
forall (jj=1:1,ii=1:5,kk=1:1)
where(mask(jj:kk))
y(jj,ii+1,kk:kk)=y(jj,ii,kk:kk)
end where
end forall
if(any(prt(y)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
call set(x,y)
forall (jj=i1:1,ii=i1:5,kk=i1:1)
where(mask(jj:kk))
x(jj:jj,ii+1,kk)=x(jj:jj,ii,kk)
end where
end forall
if(any(prt(x)/=(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
forall (jj=1:i1,ii=1:i1+4,kk=1:i1)
where(mask(jj:jj))
y(jj,ii+1:ii+1,kk)=y(jj,ii:ii,kk)
end where
end forall
if(any(prt(y)/=-(/ma(:,1),ma(:,:5)/)))write(6,*) "NG"
forall (jj=1:i1,ii=1:i1+4,kk=1:i1)
where(.not.mask(jj:jj))
y(jj,ii+1:ii+1,kk)=y(jj,ii:ii,kk)
end where
end forall
if(any(prt(y)/=-(/ma(:,1),ma(:,1:5)/)))write(6,*) "NG"
print *,'pass'
end
