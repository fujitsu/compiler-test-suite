module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 type(t)::v=t(f)
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
call s( cf4() )
print *,'pass'
contains
 subroutine s( d )
  type (t) :: d
  if (d%p()/='pass') print *,202
 end subroutine
 function cf4() result(r)
  type (t) :: r
  r = t(w())
 end function
end
