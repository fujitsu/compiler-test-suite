module mod
 integer  k1
 integer  k2
 integer,allocatable::  k3(:)
!$omp threadprivate(k2,k3)
contains 
subroutine ss
k1=1
k2=2
k3=2
end subroutine
end
subroutine s
use mod
integer,save:: n1
!$omp threadprivate(n1)
allocate(k3(3))
k1=1
k2=2
k3=2
n1=3
end
call s
print *,'pass'
end
