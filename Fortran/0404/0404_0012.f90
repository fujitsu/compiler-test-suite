module m13
integer,private:: x2(10000),x1(10000)
!$omp threadprivate (x1,x2)
bind(c,name='xx5') :: x2
bind(c,name='xx6') :: x1
contains
subroutine m13p
integer omp_get_thread_num
x1=omp_get_thread_num()+130
x2=omp_get_thread_num()+140
call m13c
end subroutine
subroutine m13c
integer omp_get_thread_num
if (any(x1/=omp_get_thread_num()+130)) print *,123,x1
if (any(x2/=omp_get_thread_num()+140)) print *,124,x2
end subroutine
end
subroutine s1
use m13
!$omp parallel
call m13p
!$omp end parallel
end
call s1
print *,'pass'
end
