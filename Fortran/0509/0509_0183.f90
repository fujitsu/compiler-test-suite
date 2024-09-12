module m0
type ty
  integer::zz
end type
type,extends(ty):: yy
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
   class(*), pointer     :: r
   allocate(yy:: r)
   select type(r)
   type is(yy)
   r%x = 'pass'
   end select
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
  class(*)::d
   select type(d)
   type is(yy)
  if (d%x/='pass') print *,202
   end select
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
