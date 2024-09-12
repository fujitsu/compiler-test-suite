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
 type(t)::v
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
end module

print *,'pass'
end
