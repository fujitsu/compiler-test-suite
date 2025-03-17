module m1
  real(4), Pointer     :: S(:)
  real(4), parameter   :: s5(5)=(/1,2,3,4,5/)
  contains
    subroutine foo(Space,i)
    Real(4), Pointer     :: Space (:)
    call bar(i,Space)
    end subroutine foo
end
use m1
  Real(4), Target   :: T(10)=-1
allocate(S(5))
S=s5
call foo(S,5)
T(1:10:2)=s5
S=>T(1:10:2)
call foo(S,5)
print *,'pass'
end
subroutine bar(i,a)
use m1,only:s5
    Real(4) :: a(i)
   if (any(abs(a-s5)>0.00001))print *,'error-1'
end
