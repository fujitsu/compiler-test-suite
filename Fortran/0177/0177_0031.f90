module m1
 type x
   character(80):: p
 end type
contains
subroutine s1(v)
type (x),pointer:: v
select case(v%p)
  case ('a')
end select
end subroutine
end

use m1
type(x),pointer:: v
allocate(v)
v%p='xyx'
call s1(v)
print *,'pass'
end
