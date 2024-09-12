module m1
integer,pointer:: p(:)
contains
subroutine s1(pp)
integer,pointer:: pp(:)
type w
procedure(kf),nopass,pointer::p1
procedure(nf),nopass,pointer::p2
procedure(mf),nopass,pointer::p3
end type
type(w)::v
k=size(pp)
v%p1=>kf
v%p2=>nf
v%p3=>mf
call sub( v%p1( pp,k ) )
call sub( v%p2( pp   ) )
call sub( v%p3( pp,k   ) )
end subroutine
function kf( pp,k ) result(r)
integer::pp(k)
integer::r(k       )
r=pp
end function
function nf( pp ) result(r)
integer::pp(:)
integer::r(size(pp) )
r=pp
end function
function mf( pp,k ) result(r)
integer,intent(in)::pp(k)
integer::r(k       )
r=pp
end function
subroutine sub(x)
integer x(3)
if (any(x/=[1,2,3])) print *,201
end subroutine
end
use m1
allocate(p(3))
p=[1,2,3]
call s1(p)
print *,'pass'
end
