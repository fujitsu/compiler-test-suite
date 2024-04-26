module m1
integer::n=2
contains
subroutine s1(v,k)
integer:: v(:)
select case(v(n))
  case (2)
    k=1
  case (2000)
    k=5
  case (3)
    k=2
  case (4,6)
    k=3
  case default
    k=4
end select
end subroutine
end

use m1
integer:: v(2)
v(2)=1
call s1(v,k)
if (k/=4) print *,101,k
v(2)=2
call s1(v,k)
if (k/=1) print *,102,k
v(2)=3
call s1(v,k)
if (k/=2) print *,103,k
v(2)=4
call s1(v,k)
if (k/=3) print *,104,k
v(2)=5
call s1(v,k)
if (k/=4) print *,105,k
v(2)=6
call s1(v,k)
if (k/=3) print *,106,k
v(2)=2000
call s1(v,k)
if (k/=5) print *,107,k
print *,'pass'
end
