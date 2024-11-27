  module m1
  common /t/ a
  private a
  end 
  module m2
  common /y/ b
!$omp threadprivate(/y/)
contains
subroutine m2s
integer omp_get_thread_num
b=omp_get_thread_num()+1
end subroutine
  end 
  module mm1
  use m1
!$OMP THREADPRIVATE(/T/)
  common /t/ a
  private a
contains
subroutine mm1s
integer omp_get_thread_num
a=omp_get_thread_num()+2
end subroutine
  end
  module mm2
  use m2
!$OMP THREADPRIVATE(/y/)
  common /y/ bb
  private bb
contains
subroutine mm2s
integer omp_get_thread_num
bb=omp_get_thread_num()+1
end subroutine
  end
  module mm3
  use m2
contains
subroutine mm3s
!$OMP THREADPRIVATE(/y/)
  common /y/ bb
!$OMP THREADPRIVATE(/T/)
  common /t/ a
integer omp_get_thread_num
if (b/=omp_get_thread_num()+1) print *,102
if (a/=omp_get_thread_num()+2) print *,103
if (bb/=omp_get_thread_num()+1) print *,142
end subroutine
  end
  subroutine s1
  use m1
!$OMP THREADPRIVATE(/T/)
  common /t/ a
integer omp_get_thread_num
if (a/=omp_get_thread_num()+2) print *,133
  end
  subroutine s2
  use m2
!$OMP THREADPRIVATE(/y/)
  common /y/ bb
integer omp_get_thread_num
if (bb/=omp_get_thread_num()+1) print *,132
if (b/=omp_get_thread_num()+1) print *,132
  end
use mm1
use mm2
use mm3
integer omp_get_thread_num
a=10
call mm1s
call mm2s
call mm3s
call s1
call s2
if (b/=omp_get_thread_num()+1) print *,112
if (a/=10                    ) print *,113
print *,'pass'
end
