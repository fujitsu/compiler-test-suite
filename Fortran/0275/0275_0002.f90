Module m  
contains
subroutine s()
integer,allocatable :: v(:)
  allocate(v(2))
  v = 8
  associate(u => v)
  !$omp parallel 
   if(any(u .ne. 8))print*,"101"
  !$omp sections firstprivate(v)
   if(any(u .ne. 8))print*,"102"
   v = -1
   if(u(1) .ne. 8)print*,"103"
   if(u(2) .ne. 8)print*,"104"
  !$omp end sections
  !$omp end parallel
  print*,"pass"
  end associate
end subroutine
end module

use m
call s()
end

