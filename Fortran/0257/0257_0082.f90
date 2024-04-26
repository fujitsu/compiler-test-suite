module m1
contains
   subroutine foo(a,l1)
    integer::a(3)
    integer*4::l1
    if (any(a/=[1,2,3])) print *,101,a
    if(loc(a).ne.l1)print*,"201"
   end subroutine
subroutine ss2(b,l1)
integer,pointer,contiguous:: b(:)
integer::k=1
integer*4::l1
call foo(b(:),l1)
call foo(b(::k),l1)
call foo(b,l1)
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,pointer,contiguous:: p(:)
integer*4::l1
l1=loc(c)
p=> c(:)
call ss2(p,l1)
if (any(c/=[1,2,3])) print *,102,c
end
call s1
print *,'pass'
end

