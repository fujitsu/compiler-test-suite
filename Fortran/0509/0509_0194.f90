module mod01
 type t
  procedure(f), pointer, nopass :: p
 end type
  procedure(f), pointer :: q
 type(t)::v
 contains
  function f() result(r)
   integer  , pointer     :: r(:)
  end function
 function cf1() result(r)
  type (t) :: r
  r = t(v%p)
 end function
 function cf2() result(r)
  type (t) :: r
  r = t(q  )
 end function
end module

print *,'pass'
end
