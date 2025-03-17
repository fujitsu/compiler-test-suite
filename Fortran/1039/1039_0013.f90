module m1
 integer a1,a2
!$omp threadprivate (a1,a2)
 integer b1,b2
!$omp threadprivate (b1,b2)
contains
subroutine sub3
!$ integer omp_get_thread_num
!$omp parallel
!$ write(1,*)20,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)20,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)20,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)20,'b2=',b2,loc(b2),omp_get_thread_num()
a1=a1+1
b1=b1+2
if (a1/=4)write(6,*)'error-21'
if (a2/=2)write(6,*)'error-22'
if (b1/=9)write(6,*)'error-23'
if (b2/=4)write(6,*)'error-24'
!$ write(1,*)21,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)21,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)21,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)21,'b2=',b2,loc(b2),omp_get_thread_num()
!$omp end parallel
end subroutine
end
use m1
integer omp_get_thread_num
a1=1
a2=2
b1=3
b2=4
!$ write(1,*)2,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)2,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)2,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)2,'b2=',b2,loc(b2),omp_get_thread_num()
call sub
call sub2
call sub3
print *,  'pass'
end
subroutine sub
use m1
integer omp_get_thread_num
!$omp parallel copyin(a1,a2,b1,b2)
!$ write(1,*)0,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)0,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)0,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)0,'b2=',b2,loc(b2),omp_get_thread_num()
 a1=a1+1
 b1=b1+2
!$ write(1,*)1,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)1,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)1,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)1,'b2=',b2,loc(b2),omp_get_thread_num()
if (a1/=2)write(6,*)'error-1'
if (a2/=2)write(6,*)'error-2'
if (b1/=5)write(6,*)'error-3'
if (b2/=4)write(6,*)'error-4'
!$omp end parallel
end
subroutine sub2
use m1
integer omp_get_thread_num
!$omp parallel 
!$ write(1,*)10,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)10,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)10,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)10,'b2=',b2,loc(b2),omp_get_thread_num()
 a1=a1+1
 b1=b1+2
!$ write(1,*)11,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)11,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)11,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)11,'b2=',b2,loc(b2),omp_get_thread_num()
if (a1/=3)write(6,*)'error-11'
if (a2/=2)write(6,*)'error-12'
if (b1/=7)write(6,*)'error-13'
if (b2/=4)write(6,*)'error-14'
!$omp end parallel
end
