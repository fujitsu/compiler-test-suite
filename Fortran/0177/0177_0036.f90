module m1
 type x
  character:: v
 end type
contains
subroutine s1()
type(x),pointer:: v
allocate(v)
v%v='xyx'
select case(v%v)
  case ('a')
end select
end subroutine
end

use m1
call s1()
print *,'pass'
end
