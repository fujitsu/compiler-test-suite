module m1
  type a
    character(:),allocatable::y(:)
  end type
end
subroutine s1
use m1
  type (a):: v(2)
  call omp_set_num_threads(1)
      allocate(v(2)% y(2),source='12')
!$omp parallel firstprivate(v)
      if (v(2)  %y(2)/='12') print *,1002
      v(2)  %y(2)='ab'
!$omp end parallel
      if (v(2)  %y(2)/='12') print *,4002,v(2)  %y(2)
end

call s1
      print *,'sngg963p : pass'
      end
