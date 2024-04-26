module m1
contains
   subroutine foo(a,b)
    integer::a(3)
    integer*4::b
    if (any(a/=[1,2,3])) print *,101,a
    if(loc(a).ne.b)print*,"103",loc(a),b
    a=[11,12,13]
   end subroutine
subroutine ss2(b,c)
integer,pointer:: b(:)
integer*4::c
integer::x =1
call foo(b(::x),c)
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,pointer:: p(:)
integer::x
integer*4::y
x=1
p=> c(::x)
y = loc(c)
call ss2(p,y)
if (any(c/=[11,12,13])) print *,102,c
end
call s1
print *,'pass'
end

