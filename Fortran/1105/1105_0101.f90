module m1
  type a
    character(:),allocatable::y
  end type
end
subroutine s1
use m1
  type (a):: v
  call omp_set_num_threads(1)
      allocate(v%  y,source='12')
!$omp parallel firstprivate(v)
      if (v  %y/='12') print *,1002
      v  %y='ab'
!$omp end parallel
      if (v  %y/='12') print *,4002,v  %y
end

call s1
      print *,'sngg955p : pass'
      end
