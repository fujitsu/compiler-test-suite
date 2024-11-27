module m0
 logical,parameter::t=.true.,f=.false.
 type y
  integer::y1
 end type
 interface operator(/=)
   module procedure p1,p2
 end interface
 contains
 function p1(x1,x2)
 logical(8),dimension(:,:),intent(in)::x1,x2
 logical(8)::p1(size(x1))
 p1=f
 if (any(x1.neqv.x2))p1=t
 end function
 function p2(x1,x2)
 type(y),dimension(:,:),intent(in)::x1,x2
 logical(8)::p2(size(x1))
 p2=f
 if (any(x1%y1/=x2%y1))p2=t
 end function
end
module m1
use m0
integer ::k=1
complex(8),parameter,dimension(2,1)::yy0=reshape((/(1,1),(2,2)/),(/2,1/))
integer(8),parameter,dimension(2,1)::yy1=reshape((/1,2/),(/2,1/))
real(16),parameter,dimension(2,1)::yy2=reshape((/1,2/),(/2,1/))
logical(8),parameter,dimension(2,1)::yy3=reshape((/t,t/),(/2,1/))
character(1),parameter,dimension(2,1)::yy4=reshape((/'1','2'/),(/2,1/))
type(y),parameter,dimension(2,1)::yy5=reshape((/y(1),y(2)/),(/2,1/))
integer,parameter,dimension(2)::vs=(/2,1/)
type x
  type(x),pointer::next
  complex(8),allocatable,dimension(:,:)::x0
  integer(8),allocatable,dimension(:,:)::x1
  real(16),allocatable,dimension(:,:)::x2
  logical(8),allocatable,dimension(:,:)::x3
  character(1),allocatable,dimension(:,:)::x4
  type(y),allocatable,dimension(:,:)::x5
end type
contains
 function wf0() result(r)
   complex(8),allocatable::r(:,:)
   allocate(r(2,1))
   r=yy1
 end function
 function wf1() result(r)
   integer(8),allocatable::r(:,:)
   allocate(r(2,1))
   r=yy1
 end function
 function wf2() result(r)
   real(16),allocatable::r(:,:)
   allocate(r(2,1))
   r=yy2
 end function
 function wf3() result(r)
   logical(8),allocatable::r(:,:)
   allocate(r(2,1))
   r=yy3
 end function
 function wf4() result(r)
   character(k),allocatable::r(:,:)
   allocate(r(2,1))
   r=yy4
 end function
 function wf5() result(r)
   type(y),allocatable::r(:,:)
   allocate(r(2,1))
   r=yy5
 end function
 function zf1() result(r)
   integer(8)::r(2,1)
   r=yy1
 end function
 function zf2() result(r)
   real(16)::r(2,1)
   r=yy2
 end function
 function zf3() result(r)
   logical(8)::r(2,1)
   r=yy3
 end function
 function zf4() result(r)
   character(k)::r(2,1)
   r=yy4
 end function
 function zf5() result(r)
   type(y)::r(2,1)
   r=yy5
 end function
 elemental function xf1(a) result(r)
   integer(8)::a,r
   intent(in)::a
   r=a
 end function
 elemental function xf2(a) result(r)
   real(16)::a,r
   intent(in)::a
   r=a
 end function
 elemental function xf3(a) result(r)
   logical(8)::a,r
   intent(in)::a
   r=a
 end function
 elemental function xf4(a) result(r)
   character(k)::a,r
   intent(in)::a
   r=a
 end function
 elemental function xf5(a) result(r)
   type(y)::a,r
   intent(in)::a
   r=a
 end function
end
recursive subroutine ss1(cx)
use m1
character*(*) cx
  complex(8),allocatable,dimension(:,:)::xx0
  integer(8),allocatable,dimension(:,:)::xx1
  real(16),allocatable,dimension(:,:)::xx2
  logical(8),allocatable,dimension(:,:)::xx3
  character(1),allocatable,dimension(:,:)::xx4
  type(y),allocatable,dimension(:,:)::xx5
type(x)::xv1
allocate(xx0(5,1),xx1(5,1),xx2(5,1),xx3(5,1),xx4(5,1),xx5(5,1))
xx0(2::2,:)=yy0
xx1(2::2,:)=yy1
xx2(2::2,:)=yy2
xx3(2::2,:)=yy3
xx4(2::2,:)=yy4
xx5(2::2,:)=yy5
call sub(xv1,xx0(2::2,:),xx1(2::2,:),xx2(2::2,:),xx3(2::2,:),xx4(2::2,:),xx5(2::2,:))
contains
subroutine sub(xv1,x0,x1,x2,x3,x4,x5)
  complex(8),dimension(:,:)::x0
  integer(8),dimension(:,:)::x1
  real(16),dimension(:,:)::x2
  logical(8),dimension(:,:)::x3
  character(1),dimension(:,:)::x4
  type(y),dimension(:,:)::x5
type(x)::xv1
xv1=x(null(),x0,x1,x2,x3,x4,x5)
if (associated(xv1%next))write(6,*) "NG"
if (any(xv1%x0/=yy0))write(6,*) "NG"
if (any(xv1%x1/=yy1))write(6,*) "NG"
if (any(xv1%x2/=yy2))write(6,*) "NG"
if (any(xv1%x3/=yy3))write(6,*) "NG"
if (any(xv1%x4/=yy4))write(6,*) "NG"
if (any(xv1%x5/=yy5))write(6,*) "NG"
xv1=x(null(),x0(:,:),x1(:,:),x2(:,:),x3(:,:),x4(:,:),x5(:,:))
if (associated(xv1%next))write(6,*) "NG"
if (any(xv1%x0/=yy0))write(6,*) "NG"
if (any(xv1%x1/=yy1))write(6,*) "NG"
if (any(xv1%x2/=yy2))write(6,*) "NG"
if (any(xv1%x3/=yy3))write(6,*) "NG"
if (any(xv1%x4/=yy4))write(6,*) "NG"
if (any(xv1%x5/=yy5))write(6,*) "NG"
xv1=x(null(),x0(::2,:),x1(::2,:),x2(::2,:),x3(::2,:),x4(::2,:),x5(::2,:))
if (associated(xv1%next))write(6,*) "NG"
if (any(xv1%x0/=yy0(::2,:)))write(6,*) "NG"
if (any(xv1%x1/=yy1(::2,:)))write(6,*) "NG"
if (any(xv1%x2/=yy2(::2,:)))write(6,*) "NG"
if (any(xv1%x3/=yy3(::2,:)))write(6,*) "NG"
if (any(xv1%x4/=yy4(::2,:)))write(6,*) "NG"
if (any(xv1%x5/=yy5(::2,:)))write(6,*) "NG"
end subroutine
end
call ss1('')
print *,'pass'
end
