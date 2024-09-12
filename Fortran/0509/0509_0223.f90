module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
 contains
  function f() result(r)
   class(*), pointer     :: r
  end function
 function cf3() result(r)
  type (t) :: r
  r = t(f)
 end function
end module

print *,'pass'
end
