module m1
 type x
  character,pointer:: v
 end type
contains
subroutine s1(v)
type(x):: v
select case(v%v)
  case ('a')
end select
end subroutine
end

use m1
type(x),pointer:: v
allocate(v)
allocate(v%v)
v%v='xyx'
call s1(v)
print *,'pass'
end
