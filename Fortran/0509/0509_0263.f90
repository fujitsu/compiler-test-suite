module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 type(t)::v=t(f)
 type tt
  procedure(w), pointer, nopass :: q
 end type
 type(tt)::vv=tt(w)
interface
  function f() result(r)
   import
   character(:), pointer     :: r
  end function
  function w() result(r)
   import
   procedure(f), pointer :: r
  end function
 function cf2() result(r)
   import
  type (t) :: r
 end function
 function cf3() result(r)
   import
  type (t) :: r
 end function
 function cf1() result(r)
   import
  type (t) :: r
 end function
 subroutine s( d )
   import
  type (t) :: d
 end subroutine
 function cf4() result(r)
   import
  type (t) :: r
 end function
 function cf5() result(r)
   import
  type (t) :: r
 end function
end interface
end module

use mod01
call s( cf1() )
call s( cf2() )
call s( cf3() )
call s( cf4() )
call s( cf5() )
print *,'pass'
end
  function f() result(r)
use mod01
   character(:), pointer     :: r
   allocate(character(4) :: r)
   r = 'pass'
  end function
  function w() result(r)
use mod01
   procedure(f), pointer :: r
   r=>f
  end function
 function cf2() result(r)
use mod01
  type (t) :: r
  r%p=>f
 end function
 function cf3() result(r)
use mod01
  type (t) :: r
  r = t(f)
 end function
 function cf1() result(r)
use mod01
  type (t) :: r
  r = t(v%p)
 end function
 subroutine s( d )
use mod01
  type (t) :: d
  if (d%p()/='pass') print *,202
 end subroutine
 function cf4() result(r)
use mod01
  type (t) :: r
  r = t(w())
 end function
 function cf5() result(r)
use mod01
  type (t) :: r
  r = t(vv%q())
 end function
