module m1
  contains
   subroutine foo(a)
    integer,contiguous::a(:)
    a=[11,12]
   end subroutine
subroutine ss(b)
integer:: b(:)
call foo(b)
end subroutine
end
subroutine s1
use m1
integer:: c(3)=[1,2,3]
call ss(c(::2))
if (any(c/=[11,2,12])) print *,101
end
call s1
print *,'OK'
end 
