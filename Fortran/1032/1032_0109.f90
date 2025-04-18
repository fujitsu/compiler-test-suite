module m1
  Complex(4), Pointer     :: S(:)
  Complex(4), parameter   :: s5(5)=(/(1,1),(2,2),(3,3),(4,4),(5,5)/)
  contains
    subroutine foo(Space,i)
    Complex(4), Pointer     :: Space (:)
    call bar(i,(Space(1::1)),Space)
    end subroutine foo
end
use m1
  Complex(4), Target   :: T(10)=-1
allocate(S(5))
S=s5
call foo(S,5)
T(1:10:2)=s5
S=>T(1:10:2)
call foo(S,5)
print *,'pass'
end
subroutine bar(i,a,b)
use m1,only:s5
    Complex(4) :: a(i),b(i)
   if (any(abs(a-s5)>0.00001))print *,'error-1'
   if (any(abs(b-s5)>0.00001))print *,'error-2'
end
