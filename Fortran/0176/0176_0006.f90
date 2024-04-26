module m
type ty
  character(10)::ch(2)
  integer,pointer::p
end type
contains
subroutine sub(x)
type(ty),pointer::x
select case (x%ch(1))
case("aaa")
   print *,'pass'
case default
  print *,1
end select
end subroutine 
end

use m
type(ty),pointer::x
allocate(x)
x%ch(1) = "aaa"
call sub(x)
end
