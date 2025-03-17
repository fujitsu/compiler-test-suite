module m1
  Complex(4), Pointer     :: S(:)
  Complex(4), parameter   :: s5(5)=(/(1,1),(2,2),(3,3),(4,4),(5,5)/)
  contains
    subroutine foo(Space,i)
    Complex(4), Pointer     :: Space (:)
    call bar(Space(:),i)
    end subroutine foo
end
use m1
  Complex(4), Target   :: T(10)=-1
allocate(S(5))
S=s5
call foo(S,5)
   if (any(abs(S-(s5+(10,10)))>0.00001))print *,'error-2'
T(1:10:2)=s5
S=>T(1:10:2)
call foo(S,5)
   if (any(abs(T(1:10:2)-(s5+(10,10)))>0.00001))print *,'error-3'
print *,'pass'
end
subroutine bar(a,i)
use m1,only:s5
    Complex(4) :: a(i)
select case (i)
 case(5)
   if (any(abs(a-s5)>0.00001))print *,'error-1'
   a=s5+(10,10)
end select
end
