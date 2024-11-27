module m
  type x1
    complex(8),pointer::p1(:)
    complex(8),pointer::p2(:,:)
    complex(8),pointer::p3(:,:,:)
  end type
  type x2
    type(x1)::w0
    type(x1)::wx0(2)
    type(x1)::ww2(2,2)
    type(x1)::w3(2,2,2)
    type(x1),pointer::x0
    type(x1),pointer::w1(:)
    type(x1),pointer::y2(:,:)
    type(x1),pointer::x3(:,:,:)
    type(x1),allocatable::y1(:)
    type(x1),allocatable::w2(:,:)
    type(x1),allocatable::y3(:,:,:)
  end type
  type x3
    type(x2)::w0
    type(x2)::wx0(2)
    type(x2)::ww2(2,2)
    type(x2)::w3(2,2,2)
    type(x2),pointer::x0
    type(x2),pointer::x1(:)
    type(x2),pointer::y2(:,:)
    type(x2),pointer::x3(:,:,:)
    type(x2),allocatable::y1(:)
    type(x2),allocatable::w2(:,:)
    type(x2),allocatable::y3(:,:,:)
  end type
  complex(8),target::t(3,3,3)=reshape((/(i,i=1,27)/),(/3,3,3/))
end
call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine chk(c,i)
complex(8)::c(*)
complex(8),parameter::p1(3)=(/25,26,27/)
complex(8),parameter::p2(2)=(/25,27/)
select case(i)
 case (1)
   k=3
   if (any(abs(c(1:k)-p1)>0.001))write(6,*) "NG"
 case (2) 
   k=2
   if (any(abs(c(1:k)-p2)>0.001))write(6,*) "NG"
end select
end
subroutine s1
use m
type(x3)::z(2)
allocate(z(2)%x0)
allocate(z(2)%x0%w1(2))
z(2)%x0%w1(2)%p1=>t(:,3,3)
n1=1
n2=2
call chk(z(2)%x0%w1(2)%p1,1)
call chk(z(n2)%x0%w1(2)%p1,1)
call chk(z(2)%x0%w1(2)%p1,1)
call chk(z(2)%x0%w1(n2)%p1,1)
call chk(z(n2)%x0%w1(n2)%p1,1)
call chk(z(n2)%x0%w1(n2)%p1,1)
call chk(z(n1+1)%x0%w1(2)%p1,1)
call chk(z(2)%x0%w1(2)%p1,1)
call chk(z(2)%x0%w1(n1+1)%p1,1)
call chk(z(n1+1)%x0%w1(n1+1)%p1,1)
call chk(z(n1+1)%x0%w1(n1+1)%p1,1)
z(2)%x0%w1(2)%p1=>t(::2,3,3)
call chk(z(2)%x0%w1(2)%p1,2)
call chk(z(n2)%x0%w1(2)%p1,2)
call chk(z(2)%x0%w1(2)%p1,2)
call chk(z(2)%x0%w1(n2)%p1,2)
call chk(z(n2)%x0%w1(n2)%p1,2)
call chk(z(n2)%x0%w1(n2)%p1,2)
call chk(z(n1+1)%x0%w1(2)%p1,2)
call chk(z(2)%x0%w1(2)%p1,2)
call chk(z(2)%x0%w1(n1+1)%p1,2)
call chk(z(n1+1)%x0%w1(n1+1)%p1,2)
call chk(z(n1+1)%x0%w1(n1+1)%p1,2)
end
subroutine s2
use m
type(x3),pointer::z(:,:)
allocate(z(2,2))
allocate(z(2,2)%x0)
allocate(z(2,2)%x0%w1(2))
z(2,2)%x0%w1(2)%p1=>t(:,3,3)
n1=1
n2=2
call chk(z(2,2)%x0%w1(2)%p1,1)
call chk(z(2,n2)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(n2)%p1,1)
call chk(z(2,n2)%x0%w1(n2)%p1,1)
call chk(z(2,n2)%x0%w1(n2)%p1,1)
call chk(z(2,n1+1)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(n1+1)%p1,1)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,1)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,1)
z(2,2)%x0%w1(2)%p1=>t(::2,3,3)
call chk(z(2,2)%x0%w1(2)%p1,2)
call chk(z(2,n2)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(n2)%p1,2)
call chk(z(2,n2)%x0%w1(n2)%p1,2)
call chk(z(2,n2)%x0%w1(n2)%p1,2)
call chk(z(2,n1+1)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(n1+1)%p1,2)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,2)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,2)
end
subroutine s3
use m
type(x3),allocatable::z(:,:)
allocate(z(2,2))
allocate(z(2,2)%x0)
allocate(z(2,2)%x0%w1(2))

z(2,2)%x0%w1(2)%p1=>t(:,3,3)
n1=1
n2=2
call chk(z(2,2)%x0%w1(2)%p1,1)
call chk(z(2,n2)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(n2)%p1,1)
call chk(z(2,n2)%x0%w1(n2)%p1,1)
call chk(z(2,n2)%x0%w1(n2)%p1,1)
call chk(z(2,n1+1)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(2)%p1,1)
call chk(z(2,2)%x0%w1(n1+1)%p1,1)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,1)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,1)
z(2,2)%x0%w1(2)%p1=>t(::2,3,3)
call chk(z(2,2)%x0%w1(2)%p1,2)
call chk(z(2,n2)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(n2)%p1,2)
call chk(z(2,n2)%x0%w1(n2)%p1,2)
call chk(z(2,n2)%x0%w1(n2)%p1,2)
call chk(z(2,n1+1)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(2)%p1,2)
call chk(z(2,2)%x0%w1(n1+1)%p1,2)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,2)
call chk(z(2,n1+1)%x0%w1(n1+1)%p1,2)
end
subroutine s4
use m
type(x3),pointer::z
allocate(z)
allocate(z%x0)
allocate(z%x0%w1(2))
z%x0%w1(2)%p1=>t(:,3,3)
n1=1
n2=2
call chk(z%x0%w1(2)%p1,1)
call chk(z%x0%w1(2)%p1,1)
call chk(z%x0%w1(2)%p1,1)
call chk(z%x0%w1(n2)%p1,1)
call chk(z%x0%w1(n2)%p1,1)
call chk(z%x0%w1(n2)%p1,1)
call chk(z%x0%w1(2)%p1,1)
call chk(z%x0%w1(2)%p1,1)
call chk(z%x0%w1(n1+1)%p1,1)
call chk(z%x0%w1(n1+1)%p1,1)
call chk(z%x0%w1(n1+1)%p1,1)
z%x0%w1(2)%p1=>t(::2,3,3)
call chk(z%x0%w1(2)%p1,2)
call chk(z%x0%w1(2)%p1,2)
call chk(z%x0%w1(2)%p1,2)
call chk(z%x0%w1(n2)%p1,2)
call chk(z%x0%w1(n2)%p1,2)
call chk(z%x0%w1(n2)%p1,2)
call chk(z%x0%w1(2)%p1,2)
call chk(z%x0%w1(2)%p1,2)
call chk(z%x0%w1(n1+1)%p1,2)
call chk(z%x0%w1(n1+1)%p1,2)
call chk(z%x0%w1(n1+1)%p1,2)
end
