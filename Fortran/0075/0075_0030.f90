module m1
  contains
   subroutine foo(a1,a2,a3)
    integer,contiguous::a1(:)
    integer,contiguous::a2(:)
    integer,contiguous::a3(:)
    if (any(a1/=[1,3])) print *,2001
    if (any(a2/=[1,3])) print *,2011
    if (any(a3/=[1,3])) print *,2021
   end subroutine
subroutine ss(b1,b2,b3)
integer:: b1(3),b2(3),b3(3)
k=2
call foo(b1(::k),b2(::k),b3(::2))
end subroutine
end
subroutine s1
use m1
integer:: c1(3)=[1,2,3]
integer:: c2(3)=[1,2,3]
integer:: c3(3)=[1,2,3]
call ss(c1,c2,c3)
if (any(c1/=[1,2,3])) print *,101
if (any(c2/=[1,2,3])) print *,102
if (any(c3/=[1,2,3])) print *,103
end
call s1
print *,'OK'
end 
