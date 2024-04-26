module m1
contains
   subroutine foo(a,b)
    integer::a(2)
    integer::b
    if (any(a/=[1,3])) print *,101,a
    if(loc(a).eq.b)print*,"103"
    a=[11,13]
   end subroutine
subroutine ss2(b,c)
integer,pointer:: b(:)
integer::c
integer::x =2
call foo(b(::x),c)
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,pointer:: p(:)
integer::x
integer::y
x=1
p=> c(::x)
y = loc(c)
call ss2(p,y)
if (any(c/=[11,2,13])) print *,102,c
end
call s1
print *,'pass'
end

