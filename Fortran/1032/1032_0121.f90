module m1
  character(1), Pointer     :: S(:)
  character(1), parameter   :: s5(5)=(/'1','2','3','4','5'/)
  contains
    subroutine foo(Space,i)
    character(*), Pointer     :: Space (:)
    call bar(i,Space)
    end subroutine foo
end
use m1
  character(1), Target   :: T(10)='x'
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
    character*(*) :: a(i)
   if (any(a/=s5))print *,'error-1'
end
