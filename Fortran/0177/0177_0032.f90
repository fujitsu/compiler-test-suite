module m1
contains
subroutine s1(v)
character,pointer:: v
select case(v)
  case ('a')
end select
end subroutine
end

use m1
character,pointer:: v
allocate(v)
v='xyx'
call s1(v)
print *,'pass'
end
