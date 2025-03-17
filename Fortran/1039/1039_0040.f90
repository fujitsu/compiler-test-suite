module m1
 integer a1(5),a2(5)
!$omp threadprivate (a1,a2)
contains
subroutine sub
integer omp_get_thread_num
!$omp parallel copyin(a1,a2)
!$ write(1,*)0,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)0,'a2=',a2,loc(a2),omp_get_thread_num()
a2(2:)=a2(:4)+1
!$ write(1,*)1,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)1,'a2=',a2,loc(a2),omp_get_thread_num()
if (any(a1/=(/1,2,4,6,8/)))write(6,*)'error-1',a1
if (any(a2/=(/1,2,4,6,8/)+10))write(6,*)'error-2',a2
!$omp end parallel
end subroutine
end
use m1
integer omp_get_thread_num
a1=(/1,3,5,7,9/)
a2=(/1,3,5,7,9/)+10
a1(2:)=a1(:4)+1
!$ write(1,*)2,'a1=',a1,loc(a1),omp_get_thread_num()
!$ write(1,*)2,'a2=',a2,loc(a2),omp_get_thread_num()
call sub
print *,  'pass'
end
