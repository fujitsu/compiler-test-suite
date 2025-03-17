integer omp_get_thread_num
 integer a1,a2,b1,b2
 common /xxx/a1,a2,b1,b2
!$omp threadprivate (/xxx/)
a1=1
a2=2
b1=3
b2=4
!$ write(1,*)2,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)2,'a2=',a2,loc(a2),omp_get_thread_num()
!$ write(1,*)2,'b1=',b1,loc(b1),omp_get_thread_num()
!$ write(1,*)2,'b2=',b2,loc(b2),omp_get_thread_num()
call sub
print *,'pass'
end
subroutine sub
 integer a1,a2,b1,b2
 common /xxx/a1,a2,b1,b2
!$omp threadprivate (/xxx/)
!$ integer omp_get_thread_num
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
