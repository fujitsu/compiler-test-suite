module m
  type x1
    complex(8),pointer::p1(:)
    complex(8),pointer::p2(:,:)
    complex(8),pointer::p3(:,:,:)
  end type
  type x2
    type(x1)::w0
    type(x1)::w1(2)
    type(x1)::w2(2,2)
    type(x1)::w3(2,2,2)
    type(x1),pointer::x0
    type(x1),pointer::x1(:)
    type(x1),pointer::x2(:,:)
    type(x1),pointer::x3(:,:,:)
    type(x1),allocatable::y1(:)
    type(x1),allocatable::y2(:,:)
    type(x1),allocatable::y3(:,:,:)
  end type
  type x3
    type(x2)::w0
    type(x2)::w1(2)
    type(x2)::w2(2,2)
    type(x2)::w3(2,2,2)
    type(x2),pointer::x0
    type(x2),pointer::x1(:)
    type(x2),pointer::x2(:,:)
    type(x2),pointer::x3(:,:,:)
    type(x2),allocatable::y1(:)
    type(x2),allocatable::y2(:,:)
    type(x2),allocatable::y3(:,:,:)
  end type
  complex(8),target::t(6,3,3)=reshape((/(i,i=1,57)/),(/6,3,3/))
end
call s1
call s2
print *,'pass'
end
subroutine s1
use m
type(x3)::z(2)
z(2)%w1(2)%w1(2)%p3=>t
n1=1
n2=2
call chk(z(2)%w1(2)%w1(2)%p3(:,3,3),1)
call chk(z(n2)%w1(2)%w1(2)%p3(:,3,3),1)
call chk(z(2)%w1(n2)%w1(2)%p3(:,3,3),1)
call chk(z(2)%w1(2)%w1(n2)%p3(:,3,3),1)
call chk(z(n2)%w1(2)%w1(n2)%p3(:,3,3),1)
call chk(z(n2)%w1(n2)%w1(n2)%p3(:,3,3),1)
call chk(z(n1+1)%w1(2)%w1(2)%p3(:,3,3),1)
call chk(z(2)%w1(n1+1)%w1(2)%p3(:,3,3),1)
call chk(z(2)%w1(2)%w1(n1+1)%p3(:,3,3),1)
call chk(z(n1+1)%w1(2)%w1(n1+1)%p3(:,3,3),1)
call chk(z(n1+1)%w1(n1+1)%w1(n1+1)%p3(:,3,3),1)
z(2)%w1(2)%w1(2)%p3=>t(::2,:,:)
call chk(z(2)%w1(2)%w1(2)%p3(:,3,3),2)
call chk(z(n2)%w1(2)%w1(2)%p3(:,3,3),2)
call chk(z(2)%w1(n2)%w1(2)%p3(:,3,3),2)
call chk(z(2)%w1(2)%w1(n2)%p3(:,3,3),2)
call chk(z(n2)%w1(2)%w1(n2)%p3(:,3,3),2)
call chk(z(n2)%w1(n2)%w1(n2)%p3(:,3,3),2)
call chk(z(n1+1)%w1(2)%w1(2)%p3(:,3,3),2)
call chk(z(2)%w1(n1+1)%w1(2)%p3(:,3,3),2)
call chk(z(2)%w1(2)%w1(n1+1)%p3(:,3,3),2)
call chk(z(n1+1)%w1(2)%w1(n1+1)%p3(:,3,3),2)
call chk(z(n1+1)%w1(n1+1)%w1(n1+1)%p3(:,3,3),2)
end
subroutine s2
use m
type(x3)::z(2)
z(2)%w1(2)%w1(2)%p3=>t
n1=1
n2=2
call chk(z(2)%w1(2)%w1(2)%p3(:,n1+n2,n1+n2),1)
call chk(z(n2)%w1(2)%w1(2)%p3(:,n1+n2,n1+n2),1)
call chk(z(2)%w1(n2)%w1(2)%p3(:,n1+n2,n1+n2),1)
call chk(z(2)%w1(2)%w1(n2)%p3(:,n1+n2,n1+n2),1)
call chk(z(n2)%w1(2)%w1(n2)%p3(:,n1+n2,n1+n2),1)
call chk(z(n2)%w1(n2)%w1(n2)%p3(:,n1+n2,n1+n2),1)
call chk(z(n1+1)%w1(2)%w1(2)%p3(:,n1+n2,n1+n2),1)
call chk(z(2)%w1(n1+1)%w1(2)%p3(:,n1+n2,n1+n2),1)
call chk(z(2)%w1(2)%w1(n1+1)%p3(:,n1+n2,n1+n2),1)
call chk(z(n1+1)%w1(2)%w1(n1+1)%p3(:,n1+n2,n1+n2),1)
call chk(z(n1+1)%w1(n1+1)%w1(n1+1)%p3(:,n1+n2,n1+n2),1)
z(2)%w1(2)%w1(2)%p3=>t(::2,:,:)
call chk(z(2)%w1(2)%w1(2)%p3(:,n1+n2,n1+n2),2)
call chk(z(n2)%w1(2)%w1(2)%p3(:,n1+n2,n1+n2),2)
call chk(z(2)%w1(n2)%w1(2)%p3(:,n1+n2,n1+n2),2)
call chk(z(2)%w1(2)%w1(n2)%p3(:,n1+n2,n1+n2),2)
call chk(z(n2)%w1(2)%w1(n2)%p3(:,n1+n2,n1+n2),2)
call chk(z(n2)%w1(n2)%w1(n2)%p3(:,n1+n2,n1+n2),2)
call chk(z(n1+1)%w1(2)%w1(2)%p3(:,n1+n2,n1+n2),2)
call chk(z(2)%w1(n1+1)%w1(2)%p3(:,n1+n2,n1+n2),2)
call chk(z(2)%w1(2)%w1(n1+1)%p3(:,n1+n2,n1+n2),2)
call chk(z(n1+1)%w1(2)%w1(n1+1)%p3(:,n1+n2,n1+n2),2)
call chk(z(n1+1)%w1(n1+1)%w1(n1+1)%p3(:,n1+n2,n1+n2),2)
end
subroutine chk(c,i)
complex(8)::c(*)
complex(8),parameter::p1(6)=(/49,50,51,52,53,54/)
complex(8),parameter::p2(3)=(/49,51,53/)
select case(i)
 case (1)
   k=6
   if (any(abs(c(1:k)-p1)>0.001))write(6,*) "NG"
 case (2) 
   k=3
   if (any(abs(c(1:k)-p2)>0.001))write(6,*) "NG"
end select
end
