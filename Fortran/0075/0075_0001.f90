module m1
  contains
   subroutine foo(a)
    integer::a(2)
    a=[11,12]
   end subroutine
subroutine ss1(b)
integer:: b(:)
call foo(b)
end subroutine
subroutine ss2(b)
integer:: b(:)
call foo(b(:))
end subroutine
end
subroutine s1
use m1
integer:: c(3),cc(3)=[1,2,3]
c=cc
call ss1(c(::2))
if (any(c/=[11,2,12])) print *,101
c=cc
call ss2(c(::2))
if (any(c/=[11,2,12])) print *,102
end
call s1
print *,'OK'
end 
