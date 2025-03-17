module m1
  Complex(4), Pointer     :: S(:)
  Complex(4), parameter   :: s5(5)=(/(1,1),(2,2),(3,3),(4,4),(5,5)/)
  contains
    subroutine foo(Space1,Space2,i,j)
    Complex(4), Pointer     :: Space1(:),Space2(:)
    call bar(Space1,i,j,Space2)
    end subroutine foo
end
use m1
  Complex(4), Target   :: T(10)=-1
allocate(S(5))
S=s5
call foo(S,S,5,5)
T(1:10:2)=s5
S=>T(1:10:2)
call foo(S,S,5,5)
print *,'pass'
end
subroutine bar(a,i,j,b)
use m1,only:s5
    Complex(4) :: a(i),b(j)
   if (any(abs(a-s5)>0.00001))print *,'error-1'
   if (any(abs(b-s5)>0.00001))print *,'error-2'
end
