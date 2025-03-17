module m1
  Complex(4), Pointer     :: S(:)
  Complex(4), parameter   :: s5(5)=(/(1,1),(2,2),(3,3),(4,4),(5,5)/)
  contains
    subroutine foo(Space,i)
    Complex(4), Pointer     :: Space (:)
    call bar(i,Space)
    end subroutine foo
end
  Complex(4), Pointer     :: S(:)
  Complex(4), Target   :: T(10)=-1
  Complex(4), parameter   :: s5(5)=(/(1,1),(2,2),(3,3),(4,4),(5,5)/)
allocate(S(5))
S=s5
    call bar(5,S)
print *,'pass'
end
subroutine bar(i,a)
use m1,only:s5
    Complex(4) :: a(i)
   if (any(abs(a-s5)>0.00001))print *,'error-1'
end
