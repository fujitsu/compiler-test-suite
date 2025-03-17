module m1
 type x
  integer::x1
 end type
  type(x), Pointer     :: S(:)
  type(x), parameter   :: s5(5)=(/x(1),x(2),x(3),x(4),x(5)/)
  contains
    subroutine foo(Space,i)
    type(x), Pointer     :: Space (:)
    call bar(i,Space)
    end subroutine foo
end
use m1
  type(x), Target   :: T(10)=x(-1)
allocate(S(5))
S=s5
call foo(S,5)
T(1:10:2)=s5
S=>T(1:10:2)
call foo(S,5)
print *,'pass'
end
subroutine bar(i,a)
use m1,only:s5,x
    type(x) :: a(i)
   if (any(a%x1/=s5%x1))print *,'error-1'
end
