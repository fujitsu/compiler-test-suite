module m1
  contains
   subroutine foo(a)
    integer,contiguous::a(:)
    a=[11,12]
   end subroutine
subroutine ss(b)
integer:: b(3)
call foo(b(::2))
end subroutine
end
subroutine s1
use m1
integer:: c(3)=[1,2,3]
call ss(c)
if (any(c/=[11,2,12])) print *,101
end
call s1
print *,'OK'
end 
