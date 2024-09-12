  module m2
  common /y/ b
!$omp threadprivate(/y/)
  end 
  module mm2
  use m2
!$OMP THREADPRIVATE(/y/)
  common /y/ bb
contains
subroutine mm2s
integer omp_get_thread_num
b=omp_get_thread_num()+1
end subroutine
  end
print *,'pass'
end

