module m1
  integer:: x1,x2
bind(c,name='xx2') :: x2
!$omp threadprivate (x1,x2)
bind(c,name='xx1') :: x1
contains
subroutine m1p
integer omp_get_thread_num
x1=omp_get_thread_num()+10
x2=omp_get_thread_num()+20
end subroutine
end
module m11
use m1,only:y1=>x1,x2
integer,private:: x1
!$omp threadprivate (x1)
bind(c,name='xx3') :: x1
contains
subroutine m11p
integer omp_get_thread_num
if (y1/=omp_get_thread_num()+10) print *,101,y1
if (x2/=omp_get_thread_num()+20) print *,102,x2
x1=omp_get_thread_num()+110
call m11c
end subroutine
subroutine m11c
integer omp_get_thread_num
if (x1/=omp_get_thread_num()+110) print *,103,x1
end subroutine
end
module m12
use m1,y2=>x2
integer,private:: x2
!$omp threadprivate (x2)
contains
subroutine m12p
integer omp_get_thread_num
if (x1/=omp_get_thread_num()+10) print *,111,x1
if (y2/=omp_get_thread_num()+20) print *,112,y2
x2=omp_get_thread_num()+120
call m12c
end subroutine
subroutine m12c
integer omp_get_thread_num
if (x2/=omp_get_thread_num()+120) print *,113,x2
end subroutine
end
module m13
use m1,only:y2=>x2,y1=>x1
integer,private:: x2,x1
!$omp threadprivate (x1,x2)
contains
subroutine m13p
integer omp_get_thread_num
if (y1/=omp_get_thread_num()+10) print *,121,y1
if (y2/=omp_get_thread_num()+20) print *,122,y2
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
module m14
use m1
private:: x2,x1
contains
subroutine m14p
integer omp_get_thread_num
if (x1/=omp_get_thread_num()+10) print *,141,x1
if (x2/=omp_get_thread_num()+20) print *,142,x2
end subroutine
end
subroutine s1
use m1
use m11
use m12
use m13
use m14
!$omp parallel
call m1p
call m11p
call m12p
call m13p
call m14p
!$omp end parallel
end
call s1
print *,'pass'
end
