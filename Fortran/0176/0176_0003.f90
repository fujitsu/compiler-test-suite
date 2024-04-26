module m
type ty
  character(10)::ch
end type
contains
subroutine sub(v)
type(ty),pointer::v
select case (v%ch)
case("aaa")
  print *,'pass'
case default
  print *,1
end select
end subroutine
end

use m
type(ty),pointer::v
allocate(v)
v%ch = "aaa"
call sub(v)
end
