module m1
 type x
  integer,pointer:: a(:)
 end type
contains
subroutine sub(blk)
type(x)::blk
integer::d(5)
!$omp parallel shared(blk) private(d)
d=blk%a+1
if (any(d-1/=(/1,2,3,4,5/)))write(6,*)'error-1',d
d(2:)=d(1:4)
if (any(d-1/=(/1,1,2,3,4/)))write(6,*)'error-2',d
d(2:)=d(1:4)+2
if (any(d-1/=(/1,3,3,4,5/)))write(6,*)'error-3',d
!$omp end parallel
end subroutine
end
use m1
integer omp_get_thread_num
type(x)::blk
allocate(blk%a(5))
blk%a=(/1,2,3,4,5/)
!$ write(1,*)2,'blk%a=',blk%a,loc(blk%a),omp_get_thread_num()
call sub(blk)
print *,  'pass'
end
