module m1
 type x
 integer a1(5),a2(5)
 end type
 type(x)::v
!$omp threadprivate (v)
contains
subroutine sub
integer omp_get_thread_num
!$omp parallel copyin(v)
!$ write(1,*)0,'a1=',v%a1,loc(v%a1),omp_get_thread_num()
!$ write(1,*)0,'a2=',v%a2,loc(v%a2),omp_get_thread_num()
v%a2(2:)=v%a2(:4)+1
!$ write(1,*)1,'a1=',v%a1,loc(v%a1),omp_get_thread_num()
!$ write(1,*)1,'a2=',v%a2,loc(v%a2),omp_get_thread_num()
if (any(v%a1/=(/1,2,4,6,8/)))write(6,*)'error-1',v%a1
if (any(v%a2/=(/1,2,4,6,8/)+10))write(6,*)'error-2',v%a2
!$omp end parallel
end subroutine
end
use m1
integer omp_get_thread_num
v%a1=(/1,3,5,7,9/)
v%a2=(/1,3,5,7,9/)+10
v%a1(2:)=v%a1(:4)+1
!$ write(1,*)2,'a1=',v%a1,loc(v%a1),omp_get_thread_num()
!$ write(1,*)2,'a2=',v%a2,loc(v%a2),omp_get_thread_num()
call sub
print *,  'pass'
end
