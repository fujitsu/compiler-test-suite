module m1
  contains
   subroutine foo(a)
    integer,contiguous::a(:)
    if (any(a/=[1,3])) print *,201
   end subroutine
subroutine ss(b)
integer,intent(in):: b(:)
call foo(b)
end subroutine
end
subroutine s1
use m1
integer:: c(3)=[1,2,3]
call ss(c(::2))
if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
