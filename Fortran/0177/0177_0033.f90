module m1
contains
subroutine s1(v)
character,allocatable:: v(:)
select case(v(1))
  case ('a')
end select
end subroutine
end

use m1
character,allocatable:: v(:)
allocate(v(1))
v='xyx'
call s1(v)
print *,'pass'
end
