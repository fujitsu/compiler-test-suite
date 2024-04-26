module m1
integer::n=2
contains
subroutine s1(v,k)
character(*):: v(:)
select case(v(n))
  case ('2':'3')
    k=1
  case default
    k=4
end select
end subroutine
end

use m1
character:: v(2)
v(2)='1'
call s1(v,k)
if (k/=4) print *,101,k
v(2)='2'
call s1(v,k)
if (k/=1) print *,102,k
print *,'pass'
end
