module m1
contains
   subroutine foo(a,b,c,d)
    integer::a(2)
    integer::b
    integer::c
    integer::d(2)
    if (any(a/=[1,3])) print *,101,a
    if(loc(a).eq.b)print*,"103", loc(a),b
    a=[11,13]
    if (any(d/=[4,6])) print *,104,d
    if(loc(d).eq.c)print*,"105",loc(d),c
    d=[14,16]
   end subroutine
subroutine ss2(b,c,d,e)
integer:: b(2)
integer::c
integer::d
integer::e(2)
integer::x =1
if (any(b/=[1,3])) print *,109,b
if (any(e/=[4,6])) print *,110,e
if(loc(e).eq.d)print*,"113"
call foo(b(::x),c,d,e(::x))
end subroutine
end
subroutine s1
use m1
integer,target:: c(3)=[1,2,3]
integer,target:: c2(3)=[4,5,6]
integer,pointer:: p(:)
integer::x
integer::y
integer::z
x=2
p=> c(::x)
y = loc(c)
z = loc(c2)
call ss2(p,y,z,c2(::x))
if (any(c/=[11,2,13])) print *,102,c
if (any(c2/=[14,5,16])) print *,103,c2
end
call s1
print *,'pass'
end

