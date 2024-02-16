module m1
  contains
   subroutine foo(a1,a2,a3,a4)
    integer,contiguous::a1(:),a2(:),a3(:),a4(:)
    if (any(a1/=[1,2,3])) print *,101
    if (any(a2/=[1,2,3])) print *,102
    if (any(a3/=[1,2,3])) print *,103
    if (any(a4/=[1,2,3])) print *,104
   end subroutine
subroutine ss1(b1,b2,b3,b4)
integer,contiguous:: b1(:),b2(:),b3(:),b4(:)
call foo(b1,b2,b3,b4)
end subroutine
subroutine ss2(b1,b2,b3,b4)
integer,contiguous:: b1(:),b2(:),b3(:),b4(:)
call foo(b1(:),b2(:),b3(:),b4(:))
end subroutine
end
subroutine s1
use m1
integer:: c(3)
c=[1,2,3]
call ss1(c(:),c(:),c(:),c(:))
if (any(c/=[1,2,3])) print *,201
c=[1,2,3]
call ss2(c(:),c(:),c(:),c(:))
if (any(c/=[1,2,3])) print *,202
end
call s1
print *,'OK'
end 
