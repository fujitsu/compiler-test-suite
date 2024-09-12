module mod01
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
   character(:), pointer     :: r
   allocate(character(4) :: r)
   r = 'pass'
  end function
  function w() result(r)
   procedure(f), pointer :: r
   r=>f
  end function
end module

use mod01
call s( cf5() )
print *,'pass'
contains
 function cf5() result(r)
  type (t) :: r
  r = t(vv%q())
 end function
 subroutine s( d )
  type (t) :: d
  if (d%p()/='pass') print *,202
 end subroutine
end
