module m1
type t
procedure(f),nopass,pointer::w
end type
 contains
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
subroutine s( b ,p ,c)
 interface
 function b(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
 end function
 end interface
procedure(b),pointer::p
type(t)::c
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
if (any( b( a ) /= [1,2]) ) print *,215
if (any( p( a ) /= [1,2]) ) print *,205
if (any( c%w( a ) /= [1,2]) ) print *,206
end subroutine
end
use m1
integer,allocatable::a(:)
procedure(f),pointer::p
type(t)::v,c
allocate(a(2),source=[1,2])

p=>f
if (any( p( a ) /= [1,2]) ) print *,203
v%w=>f
if (any( v%w( a ) /= [1,2]) ) print *,204
call q( f )

c%w=>f
call s( f , p , c)
print *,'pass'
end

subroutine q( f )
 interface
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
 end function
 end interface
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
if (any( f( a ) /= [1,2]) ) print *,205
end
