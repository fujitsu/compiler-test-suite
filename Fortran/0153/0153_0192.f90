module m1
  integer:: x1,x2
!$omp threadprivate (x1,x2)
contains
subroutine m1p
integer omp_get_thread_num
x1=omp_get_thread_num()+10
x2=omp_get_thread_num()+20
end subroutine
end
module m11
use m1,only:x2
contains
subroutine m11p
integer omp_get_thread_num
if (x2/=omp_get_thread_num()+20) print *,102,x2
end subroutine
end
subroutine s1
use m1
use m11
integer omp_get_thread_num
call m1p
call m11p
if (x1/=omp_get_thread_num()+10) print *,161,x1
if (x2/=omp_get_thread_num()+20) print *,162,x2
end
call s1
print *,'pass'
end
