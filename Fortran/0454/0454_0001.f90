module m1
implicit none
type x
  integer::x1
end type
contains
subroutine s1(v)
type(x)::v(:)
if (size(v)/=0) print *,101,size(v)
end subroutine
subroutine s2(v)
class(x)::v(:)
integer::k
if (size(v)/=0) print *,102,size(v)
k=0
select type(v)
 typeis(x)
k=1
end select
if (k/=1) print *,201
if (size(v)/=0) print *,101,size(v)
end subroutine
subroutine s3(v)
class(*)::v(:)
integer::k
if (size(v)/=0) print *,102,size(v)
k=0
select type(v)
 typeis(x)
k=1
end select
if (k/=1) print *,201
if (size(v)/=0) print *,103,size(v)
end subroutine
subroutine s4(v)
type(*)::v(:)
if (size(v)/=0) print *,104,size(v)
end subroutine
end
use m1
call s1( [x::] )
call s2( [x::] )
call s3( [x::] )
call s4( [x::] )
print *,'pass'
end

