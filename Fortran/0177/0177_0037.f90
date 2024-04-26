module m1
 type x
  character:: v
 end type
contains
subroutine s1()
type y
type(x),pointer:: v
end type
type(y),pointer:: v

allocate(v)
allocate(v%v)
v%v%v='xyx'
select case(v%v%v)
  case ('a')
end select
end subroutine
end

use m1
call s1()
print *,'pass'
end
