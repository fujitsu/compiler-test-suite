module m1
 type x
 integer a1,a2
 end type
 type(x)::v(5)
!$omp threadprivate (v)
contains
subroutine sub
integer omp_get_thread_num
!$omp parallel copyin(v)
!$ write(1,*)0,'a1=',v(:)%a1,loc(v(3)%a1),omp_get_thread_num()
!$ write(1,*)0,'a2=',v(:)%a2,loc(v(3)%a2),omp_get_thread_num()
v(2:)%a2=v(:4)%a2+1
!$ write(1,*)1,'a1=',v(:)%a1,loc(v(:)%a1),omp_get_thread_num()
!$ write(1,*)1,'a2=',v(:)%a2,loc(v(:)%a2),omp_get_thread_num()
if (any(v(:)%a1/=(/1,2,4,6,8/)))write(6,*)'error-1',v(:)%a1
if (any(v(:)%a2/=(/1,2,4,6,8/)+10))write(6,*)'error-2',v(:)%a2
!$omp end parallel
end subroutine
end
use m1
integer omp_get_thread_num
v(:)%a1=(/1,3,5,7,9/)
v(:)%a2=(/1,3,5,7,9/)+10
v(2:)%a1=v(:4)%a1+1
!$ write(1,*)2,'a1=',v(:)%a1,loc(v(3)%a1),omp_get_thread_num()
!$ write(1,*)2,'a2=',v(:)%a2,loc(v(3)%a2),omp_get_thread_num()
call sub
print *,  'pass'
end
