  integer x(5)
  integer,allocatable:: tmp(:)
  allocate(tmp(5))
tmp=0
  !$omp do simd reduction(+:tmp)
  do i=1,5
     tmp(i)=i
     x(i)=tmp(i)
  enddo
!$omp end do simd
if(any(tmp/=[1,2,3,4,5])) print *,'err'
if(any(x/=[1,2,3,4,5])) print *,'err1'
print *,'pass'
      end
