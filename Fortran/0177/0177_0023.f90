module m1
integer::n=2
contains
subroutine s1(v,k)
integer:: v(:)
select case(v(n))
  case (1012)
    k=11
  case (2001)
    k=15
  case (1013)
    k=12
  case (1014,1016)
    k=13
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
v(2)=1011
call s1(v,k)
if (k/=4) print *,1101,k
v(2)=1012
call s1(v,k)
if (k/=11) print *,1102,k
v(2)=1013
call s1(v,k)
if (k/=12) print *,1103,k
v(2)=1014
call s1(v,k)
if (k/=13) print *,1104,k
v(2)=1015
call s1(v,k)
if (k/=4) print *,1105,k
v(2)=1016
call s1(v,k)
if (k/=13) print *,1106,k
v(2)=2001
call s1(v,k)
if (k/=15) print *,107,k
print *,'pass'
end
