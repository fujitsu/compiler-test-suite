module m1
contains
subroutine s1(v,k)
character,asynchronous:: v
k=0
select case(v)
  case ('a')
    k=1
end select
end subroutine
end

use m1
character:: v
v='a'
call s1(v,k)
if (k/=1) print *,101
print *,'pass'
end
