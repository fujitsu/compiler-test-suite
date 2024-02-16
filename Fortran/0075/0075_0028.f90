module m1
  contains
   subroutine foo(a1,a2,a3)
    integer,contiguous::a1(:)
    integer,contiguous::a2(:)
    integer,contiguous::a3(:)
    if (any(a1/=[1,3])) print *,201
    if (any(a2/=[1,3])) print *,211
    if (any(a3/=[1,3])) print *,221
   end subroutine
subroutine ss(b1,b2,b3)
integer,intent(in):: b1(:),b2(:),b3(:)
call foo(b1,b2,b3)
end subroutine
end
subroutine s1
use m1
integer:: c(3)=[1,2,3]
call ss(c(::2),c(::2),c(::2))
if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
