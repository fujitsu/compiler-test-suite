module m1
contains
   subroutine foo(a,b,c,d)
    integer::a(3)
    integer*4::b
    integer*4::c
    integer::d(3)
    if (any(a/=[1,2,3])) print *,101,a
    if(loc(a).ne.b)print*,"103", loc(a),b
    a=[11,12,13]
    if (any(d/=[1,2,3])) print *,101,a
    if(loc(d).ne.c)print*,"103",loc(d),c
    d=[11,12,13]
   end subroutine
subroutine ss2(b,c,d,e)
integer:: b(:)
integer*4::c
integer*4::d
integer,contiguous::e(:)
integer::x =1
if(loc(e).ne.d)print*,"109"
call foo(b(::x),c,d,e(::x))
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,target:: c2(3)=[1,2,3]
integer,pointer:: p(:)
integer::x
integer*4::y
integer*4::z
x=1
p=> c(:)
y = loc(c)
z = loc(c2)
call ss2(p,y,z,c2(::x))
if (any(c/=[11,12,13])) print *,102,c
if (any(c2/=[11,12,13])) print *,103,c2
end
call s1
print *,'pass'
end

