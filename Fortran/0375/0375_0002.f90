module m1
 integer,target:: a1(5),b1(5)
 integer,pointer:: a2(:),b2(:)
!$omp threadprivate (a1,a2,b1,b2)
contains
subroutine sub
integer omp_get_thread_num
!$omp parallel copyin(a1,a2,b1,b2)
b2=>b1(2:)
b2=b1(1:4)+1
if (any(a1/=(/1,2,4,6,8/)))write(6,*)'error-1',a1
if (any(b1/=(/1,2,4,6,8/)+10))write(6,*)'error-2',b1
!$omp end parallel
end subroutine
end
use m1
integer omp_get_thread_num
a1=(/1,3,5,7,9/)
a2=>a1(2:)
b1=(/1,3,5,7,9/)+10
a2=a1(1:4)+1
call sub
print *,  'pass'
end
