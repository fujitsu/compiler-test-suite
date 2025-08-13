module m
integer,bind(c,name='y12345') :: j2(100000)
!$omp threadprivate(i1,j1,k1,j2)
integer,bind(c,name='x12345') :: j1(100000)
private j1
contains
subroutine s1
integer :: omp_get_thread_num
!$omp parallel
j1 = omp_get_thread_num()
j2 = omp_get_thread_num()
write(13,*)1,loc(j1)
!$omp end parallel
!$omp parallel
if (any(j1 /= omp_get_thread_num())) print *,35
if (any(j2 /= omp_get_thread_num())) print *,36
write(13,*)1,loc(j1)
!$omp end parallel
end subroutine
end
use m
integer :: omp_get_thread_num
call s1

!$omp parallel
j2 = omp_get_thread_num()
write(13,*)1,loc(j1)
!$omp end parallel
!$omp parallel
if (any(j2 /= omp_get_thread_num())) print *,37
write(13,*)1,loc(j1)
!$omp end parallel
print *,'pass'
end
