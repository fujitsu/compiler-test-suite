module m1
integer,pointer:: p(:)
contains
subroutine s1(pp)
integer,pointer:: pp(:)
k=size(pp)
call sub( kf( pp,k ) )
call sub( nf( pp   ) )
call sub( mf( pp,k   ) )
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
