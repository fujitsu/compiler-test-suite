module m0
type ty
 integer::z
end type
type,extends(ty)::tty
 character(4)::x
end type
end
module mod01
use m0
 type t
  procedure(f), pointer, nopass :: p
 end type
 type(t)::v=t(f)
  procedure(w), pointer :: qq
  procedure(f), pointer :: pp
 type tt
  procedure(w), pointer, nopass :: q
 end type
 type(tt)::vv=tt(w)
 integer::n=2
 contains
  function f() result(r)
   character(n),allocatable  :: r
   allocate( r)
   r = '12'
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
  character(*)::d
  if (d/='12') print *,202
 end subroutine
 function cf4() result(r)
  type (t) :: r
  r = t(w())
 end function
 function cf5() result(r)
  type (t) :: r
  r = t(vv%q())
 end function
 function cf6() result(r)
  type (t) :: r
  r = t(qq())
 end function
 function cf7() result(r)
  type (t) :: r
  r = t(pp)
 end function
end module

use mod01
  procedure(f), pointer :: z
call s( cf1() )
call s( cf2() )
call s( cf3() )
call s( cf4() )
call s( cf5() )
 qq=>w
call s( cf6() )
 pp=>f
call s( cf7() )
z=>f
call chk(z())
z=>v%p
call chk(z())
z=>w()
call chk(z())
z=>vv%q()
call chk(z())
z=>qq()    
call chk(z())
z=>pp
call chk(z())
call chk(f())
call chk(v%p())
call chk(pp())
print *,'pass'
end
