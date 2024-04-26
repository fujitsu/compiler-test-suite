module m1
contains
   subroutine foo(a)
    integer,contiguous::a(:)
    if (any(a/=[1,2,3])) print *,101,a
   end subroutine
   subroutine foo2(a)
    integer::a(3)
    if (any(a/=[1,2,3])) print *,101,a
   end subroutine
   subroutine foo3(a)
    integer::a(:)
    if (any(a/=[1,2,3])) print *,101,a
    a=[11,12,13]
   end subroutine
subroutine ss2(b)
integer,pointer:: b(:)
call foo(b(:))
call foo2(b(:))
call foo3(b(:))
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,pointer:: p(:)
p=> c(::1)
call ss2(p)
if (any(c/=[11,12,13])) print *,102,c
end
call s1
print *,'pass'
end

