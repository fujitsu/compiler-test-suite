module m1
  Complex(4), Pointer     :: S(:)
  Complex(4), parameter   :: s5(5)=(/(1,1),(2,2),(3,3),(4,4),(5,5)/)
  contains
    subroutine foo(Space,i)
    Complex(4), Pointer     :: Space (:)
    call bar(i,Space)
    end subroutine foo
end
use m1,only:s5
  Complex(4), Target   :: T(10)=-1
  Complex(4):: S(5)
S=s5
    call bar(5,S(1:5:1))
T(1:10:2)=s5
    call bar(5,T(1:10:2))
print *,'pass'
end
subroutine bar(i,a)
use m1,only:s5
    Complex(4) :: a(i)
   if (any(abs(a-s5)>0.00001))print *,'error-1'
end
