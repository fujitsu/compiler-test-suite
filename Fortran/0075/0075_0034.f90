module m1
  contains
   function   foo(a1,a2,a3) result(ir)
    integer,contiguous::a1(:),a2(:),a3(:)
    if (any(a1/=[1,3])) print *,301
    if (any(a2/=[1,3])) print *,301
    if (any(a3/=[1,3])) print *,301
    ir=1
   end function
subroutine ss1(b1,b2,b3)
integer,contiguous:: b1(:)
integer,contiguous:: b2(:)
integer,contiguous:: b3(:)
if (foo(b1,b2,b3)+foo(b1,b2,b3)+foo(b1,b2,b3)/=3) print *,301
end subroutine
subroutine ss2(b1,b2,b3)
integer,contiguous:: b1(:)
integer,contiguous:: b2(:)
integer,contiguous:: b3(:)
if (foo(b1(:),b2(:),b3(:))+foo(b1(:),b2(:),b3(:))+foo(b1(:),b2(:),b3(:))/=3) print *,301
end subroutine
end
subroutine s1
use m1
integer:: c(3),cc(3)=[1,2,3]
c=cc
k=2
call ss1(c(::k),c(::k),c(::k))
 if (any(c/=[1,2,3])) print *,101
c=cc
call ss2(c(::k),c(::k),c(::k))
 if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
