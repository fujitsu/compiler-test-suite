module m
integer,bind(c,name='y12345') :: j2(100000)
integer,bind(c,name='w12345') :: j3(100000)
integer,bind(c,name='z12345') :: j4(100000)
!$omp threadprivate(i1,j1,k1,j2,j3,j4)
integer,bind(c,name='x12345') :: j1(100000)
private j1,j3
contains
subroutine s1
integer :: omp_get_thread_num
!$omp parallel
j1 = omp_get_thread_num()
j2 = omp_get_thread_num()
j3 = omp_get_thread_num()
j4 = omp_get_thread_num()
write(1,*)1,loc(j1)
!$omp end parallel
!$omp parallel
if (any(j1 /= omp_get_thread_num())) print *,35
if (any(j2 /= omp_get_thread_num())) print *,36
if (any(j3 /= omp_get_thread_num())) print *,36
if (any(j4 /= omp_get_thread_num())) print *,36
write(1,*)1,loc(j1)
!$omp end parallel
end subroutine
end
use m
integer :: omp_get_thread_num
call s1

!$omp parallel
j2 = omp_get_thread_num()
j4 = omp_get_thread_num()
write(1,*)1,loc(j1)
!$omp end parallel
!$omp parallel
if (any(j2 /= omp_get_thread_num())) print *,37
if (any(j4 /= omp_get_thread_num())) print *,37
write(1,*)1,loc(j1)
!$omp end parallel
print *,'pass'
end
