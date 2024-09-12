module m1
  integer,allocatable:: a1,a2
!$omp threadprivate(a2,a1)
end
module m2
  use m1,only:b1=>a1,b2=>a2
end
subroutine s1(n)
use m1
use m2
!$omp parallel
if (n==1) then
allocate(a1,a2)
a1=1
a2=1
else
allocate(b1,b2)
b1=2
b2=2
end if
if (n/=1) then
if (a1/=2) print *,101,a1
if (a2/=2) print *,102,a2
else
if (b1/=1) print *,201,b1
if (b2/=1) print *,202,b2
endif
if (n==1) then
deallocate(a1,a2)
else
deallocate(b1,b2)
end if
!$omp end parallel
end
call s1(1) 
call s1(2) 
print *,'pass'
end
