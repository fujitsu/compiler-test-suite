module m1
  contains
   subroutine foo(a1,a2,a3,a4)
    integer,contiguous::a1(:),a2(:),a3(:),a4(:)
 if (any(a1/=[1,3])) print *,301
 if (any(a2/=[1,2,3])) print *,302
 if (any(a3/=[1,3])) print *,303
 if (any(a4/=[1,2,3])) print *,304
   end subroutine
subroutine ss(b1,b2,b3,b4)
integer:: b1(:),b2(:),b3(:),b4(:)
call foo(b1,b2,b3,b4)
end subroutine
end
subroutine s1
use m1
integer:: c(3)=[1,2,3]
call ss(c(::2),c,c(::2),c)
 if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
