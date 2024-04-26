module m1
 type x
   integer:: p
   integer:: x1
 end type
contains
subroutine s1(v,k)
type (x),pointer:: v
if (v%p==10) print *,301
select case(v%p)
  case (1)
    k=1
  case (2)
    k=2
  case (3,4)
    k=3
  case default
    k=4
end select
end subroutine
end

use m1
type(x),pointer:: v
allocate(v)
v%p=0
call s1(v,k)
if (k/=4) print *,101,k
v%p=1
call s1(v,k)
if (k/=1) print *,102,k
v%p=2
call s1(v,k)
if (k/=2) print *,103,k
v%p=3
call s1(v,k)
if (k/=3) print *,104,k
v%p=4
call s1(v,k)
if (k/=3) print *,105,k
print *,'pass'
end
