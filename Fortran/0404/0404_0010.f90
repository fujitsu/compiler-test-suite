module m13
integer,private:: x2,x1
!$omp threadprivate (x1,x2)
bind(c,name='xx5') :: x2
bind(c,name='xx6') :: x1
contains
subroutine s1
integer omp_get_thread_num
x1=omp_get_thread_num()+130
x2=omp_get_thread_num()+140
call m13c
end subroutine
subroutine m13c
integer omp_get_thread_num
if (x1/=omp_get_thread_num()+130) print *,123,x1
if (x2/=omp_get_thread_num()+140) print *,124,x2
end subroutine
end
use m13
!$omp parallel
call s1
!$omp end parallel
print *,'pass'
end
