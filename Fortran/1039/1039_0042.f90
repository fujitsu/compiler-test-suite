module m1
 type x
 integer a1(5),a2(5)
 end type
 type(x)::v(3)
!$omp threadprivate (v)
contains
subroutine sub
integer omp_get_thread_num
!$omp parallel copyin(v)
!$ write(1,*)0,'a1=',v(3)%a1,loc(v(3)%a1),omp_get_thread_num()
!$ write(1,*)0,'a2=',v(3)%a2,loc(v(3)%a2),omp_get_thread_num()
v(3)%a2(2:)=v(3)%a2(:4)+1
!$ write(1,*)1,'a1=',v(3)%a1,loc(v(3)%a1),omp_get_thread_num()
!$ write(1,*)1,'a2=',v(3)%a2,loc(v(3)%a2),omp_get_thread_num()
if (any(v(3)%a1/=(/1,2,4,6,8/)))write(6,*)'error-1',v(3)%a1
if (any(v(3)%a2/=(/1,2,4,6,8/)+10))write(6,*)'error-2',v(3)%a2
!$omp end parallel
end subroutine
end
use m1
integer omp_get_thread_num
v(3)%a1=(/1,3,5,7,9/)
v(3)%a2=(/1,3,5,7,9/)+10
v(3)%a1(2:)=v(3)%a1(:4)+1
!$ write(1,*)2,'a1=',v(3)%a1,loc(v(3)%a1),omp_get_thread_num()
!$ write(1,*)2,'a2=',v(3)%a2,loc(v(3)%a2),omp_get_thread_num()
call sub
print *,  'pass'
end
