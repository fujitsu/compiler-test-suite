module m1
integer::n=2
contains
subroutine s1(v,k)
integer:: v(:)
select case(v(n))
  case (2)
    k=1
  case default
    k=4
end select
end subroutine
subroutine s2(v,k)
integer:: v(:)
!$omp parallel firstprivate(v)
select case(v(n))
  case (2)
    k=1
  case default
    k=4
end select
!$omp end parallel 
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
v(2)=1
call s2(v,k)
if (k/=4) print *,103,k
v(2)=2
call s2(v,k)
if (k/=1) print *,104,k
print *,'pass'
end
