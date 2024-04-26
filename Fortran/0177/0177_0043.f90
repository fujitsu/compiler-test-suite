module m1
contains
subroutine s1(v)
character        :: v,vv
!$omp parallel firstprivate(v) private(vv,k)
k=1
select case(v)
  case ('1' )
    k=2
end select
if (k/=2) print *,101
k=1
vv='1'
select case(vv)
  case ('1' )
    k=2
end select
if (k/=2) print *,102
select case(sum(ichar(char([10]))))
  case (10  )
    k=2
end select
if (k/=2) print *,103
!$omp end parallel
end subroutine
end

use m1
character:: v
v='1'    
call s1(v)
print *,'pass'
end
