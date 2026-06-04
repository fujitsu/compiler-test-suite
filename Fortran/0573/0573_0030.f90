module m1
contains
   subroutine foo(a)
    integer,allocatable::a(:)
    allocate(a(10))
    a =10
   end subroutine
subroutine ss2(b)
integer,allocatable:: b(:)
 call foo(b)
end subroutine
end
subroutine s1
use m1
call ss2(NULL())
end
call s1
print *,'pass'
end

