module m1
  contains
   function   foo(a) result(ir)
    integer::a(2)
    if (any(a/=[1,3])) print *,301
    ir=1
   end function
subroutine ss1(b)
integer,contiguous:: b(:)
if (foo(b)+foo(b)+foo(b)/=3) print *,301
end subroutine
subroutine ss2(b)
integer,contiguous:: b(:)
if (foo(b(:))+foo(b(:))+foo(b(:))/=3) print *,301
end subroutine
end
subroutine s1
use m1
integer:: c(3),cc(3)=[1,2,3]
c=cc
call ss1(c(::2))
 if (any(c/=[1,2,3])) print *,101
c=cc
call ss2(c(::2))
 if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
