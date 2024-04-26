module m1
  integer:: x1,x2
bind(c,name='xx2') :: /c2/
common /c1/x1
!$omp threadprivate (/c1/)
common /c2/x2
bind(c,name='xx1') :: /c1/
!$omp threadprivate (/c2/)
contains
subroutine m1p
integer omp_get_thread_num
!$omp parallel
x1=omp_get_thread_num()+10
x2=omp_get_thread_num()+20
!$omp end parallel
end subroutine
end
module m11
use m1,only:y1=>x1,x2
integer,private:: x1
!$omp threadprivate (/c3/)
common /c3/x1
bind(c,name='xx3') :: /c3/
contains
subroutine m11p
integer omp_get_thread_num
!$omp parallel
if (y1/=omp_get_thread_num()+10) print *,101,y1
if (x2/=omp_get_thread_num()+20) print *,102,x2
x1=omp_get_thread_num()+110
!$omp end parallel
call m11c
end subroutine
subroutine m11c
integer omp_get_thread_num
!$omp parallel
if (x1/=omp_get_thread_num()+110) print *,103,x1
!$omp end parallel
end subroutine
end
module m12
use m1,y2=>x2
integer,private:: x2
bind(c,name='xx4') :: /c4/
!$omp threadprivate (/c4/)
common /c4/x2
contains
subroutine m12p
integer omp_get_thread_num
!$omp parallel
if (x1/=omp_get_thread_num()+10) print *,111,x1
if (y2/=omp_get_thread_num()+20) print *,112,y2
x2=omp_get_thread_num()+120
!$omp end parallel
call m12c
end subroutine
subroutine m12c
integer omp_get_thread_num
!$omp parallel
if (x2/=omp_get_thread_num()+120) print *,113,x2
!$omp end parallel
end subroutine
end
module m13
use m1,only:y2=>x2,y1=>x1
integer,private:: x2,x1
!$omp threadprivate (/c51/,/c52/)
common /c51/x2
common /c52/x1
bind(c,name='xx51') :: /c51/
bind(c,name='xx52') :: /c52/
contains
subroutine m13p
integer omp_get_thread_num
!$omp parallel
if (y1/=omp_get_thread_num()+10) print *,121,y1
if (y2/=omp_get_thread_num()+20) print *,122,y2
x1=omp_get_thread_num()+130
x2=omp_get_thread_num()+140
!$omp end parallel
call m13c
end subroutine
subroutine m13c
integer omp_get_thread_num
!$omp parallel
if (x1/=omp_get_thread_num()+130) print *,123,x1
if (x2/=omp_get_thread_num()+140) print *,124,x2
!$omp end parallel
end subroutine
end
module m14
use m1
private:: x2,x1
contains
subroutine m14p
integer omp_get_thread_num
!$omp parallel
if (x1/=omp_get_thread_num()+10) print *,141,x1
if (x2/=omp_get_thread_num()+20) print *,142,x2
!$omp end parallel
end subroutine
end
subroutine s1
use m1
use m11
use m12
use m13
use m14
call m1p
call m11p
call m12p
call m13p
call m14p
end
call s1
print *,'pass'
end
