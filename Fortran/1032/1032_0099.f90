module m1
  Complex(4), Pointer     :: S(:,:)
  Complex(4), parameter   :: s5(1,5)=reshape((/(1,1),(2,2),(3,3),(4,4),(5,5)/),(/1,5/))
  contains
    subroutine foo(Space,i)
    Complex(4), Pointer     :: Space (:,:)
    call bar(i,Space(1,:))
    end subroutine foo
end
use m1
  Complex(4), Target   :: T(1,10)=-1
allocate(S(1,5))
S=s5
call foo(S,5)
T(:,1:10:2)=s5
S=>T(:,1:10:2)
call foo(S,5)
print *,'pass'
end
subroutine bar(i,a)
use m1,only:s5
    Complex(4) :: a(i)
   if (any(abs(a-s5(1,:))>0.00001))print *,'error-1'
end
