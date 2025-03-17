module m1
  Complex(4), Pointer     :: S(:,:)
  Complex(4), parameter   :: s5(5)=(/(1,1),(2,2),(3,3),(4,4),(5,5)/)
  contains
    subroutine foo(Space,i)
    Complex(4), Pointer     :: Space (:,:)
    Complex(4), allocatable :: alc (:)
    allocate(alc(5))
    alc=s5
    do j=1,3
    call bar(j,Space(:,j),i,alc)
    end do
    end subroutine foo
end
use m1
  Complex(4), Target   :: T(10,3)=-1
allocate(S(5,3))
do k=1,3
S(:,k)=s5
end do
call foo(S,5)
   if (any(abs(S(:,1)-(s5+(10,10)))>0.00001))print *,'error-2'
do k=1,3
T(1:10:2,k)=s5
end do
S=>T(1:10:2,:)
call foo(S,5)
do k=1,3
   if (any(abs(T(1:10:2,k)-(s5+(10,10)))>0.00001))print *,'error-3'
end do
print *,'pass'
end
subroutine bar(j,a,i,b)
use m1,only:s5
    Complex(4) :: a(i),b(i)
select case (i)
 case(5)
   if (any(abs(a-s5)>0.00001))print *,'error-1',j
   if (any(abs(b-s5)>0.00001))print *,'error-4'
   a=s5+(10,10)
end select
end
