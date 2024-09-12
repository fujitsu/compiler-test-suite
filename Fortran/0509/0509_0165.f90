module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 type(t)::v

 contains
  function f() result(r)
   character(:), allocatable :: r
   allocate(character(4) :: r)
   r = 'pass'
  end function
end module

use mod01
print *,'pass'
contains
 function c() result(r)
  type (t) :: r
  r = t(v%p)
 end function
end
