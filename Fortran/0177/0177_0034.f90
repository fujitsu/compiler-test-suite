module m1
 type x
  character:: v
 end type
contains
subroutine s1(v)
type(x),pointer:: v
select case(v%v)
  case ('a')
end select
end subroutine
end

use m1
type(x),pointer:: v
allocate(v)
v%v='xyx'
call s1(v)
print *,'pass'
end
