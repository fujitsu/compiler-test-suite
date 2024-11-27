Module m  
contains
subroutine t()
integer,allocatable :: v(:)
  allocate(v(2))
  v = 8
  associate(u => v)
  !$omp parallel private(v)
   v = -1
   if(u(1) .ne. 8)print*,"102",u(1)
   if(u(2) .ne. 8)print*,"103",u(2)
  !$omp end parallel
  end associate
end subroutine
subroutine s()
integer,allocatable :: v(:)
  allocate(v(2))
  v = 8
  associate(u => v)
  !$omp parallel reduction(+:v)
   v = -1
   if(u(1) .ne. 8)print*,"112",u(1)
   if(u(2) .ne. 8)print*,"113",u(2)
  !$omp end parallel
  end associate
end subroutine
end module

use m
call omp_set_num_threads(1)
call t()
call s()
  print*,"pass"
end
