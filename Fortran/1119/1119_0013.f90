  integer x(5)
  integer,pointer:: tmp(:)
  allocate(tmp(5))
tmp=0
  !$omp simd reduction(+:tmp)
  do i=1,5
     tmp(i)=i
     x(i)=tmp(i)
  enddo
!$omp end simd
if(any(tmp/=x)) print *,'err'
print *,'pass'
      end
