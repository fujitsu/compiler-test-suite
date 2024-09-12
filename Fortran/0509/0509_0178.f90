module m0
type ty
 character(4)::x
end type
end
module mod01
use m0
 type t
  procedure(f), pointer, nopass :: p
 end type
 type(t)::v=t(f)
 type tt
  procedure(w), pointer, nopass :: q
 end type
 type(tt)::vv=tt(w)
 contains
  function f() result(r)
   type(ty), pointer     :: r
   allocate( r)
   r%x = 'pass'
  end function
  function w() result(r)
   procedure(f), pointer :: r
   r=>f
  end function
 function cf2() result(r)
  type (t) :: r
  r%p=>f
 end function
 function cf3() result(r)
  type (t) :: r
  r = t(f)
 end function
 function cf1() result(r)
  type (t) :: r
  r = t(v%p)
 end function
 subroutine s( d )
  type (t) :: d
  call chk(d%p())
 end subroutine
 subroutine chk( d)
  type(ty)::d
  if (d%x/='pass') print *,202
 end subroutine
 function cf4() result(r)
  type (t) :: r
  r = t(w())
 end function
 function cf5() result(r)
  type (t) :: r
  r = t(vv%q())
 end function
end module

use mod01
call s( cf1() )
call s( cf2() )
call s( cf3() )
call s( cf4() )
call s( cf5() )
print *,'pass'
contains
end
