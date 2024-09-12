subroutine s
use omp_lib_kinds
real::a
if (omp_lock_kind/=8) print *,101
a=2.0
!$omp simd private(a)
do i=1,1
   a=1.0
end do
!$omp end simd
if (a/=2) print *,102,a
end
call s
print *,'pass'
end
