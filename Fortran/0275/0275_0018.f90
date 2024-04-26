  real,pointer :: v(:)
  allocate(v(2))
  v = 8
  call s(v)
  contains
  subroutine s(d)
  real :: d(2)
  associate(d => v)
  !$omp parallel 
  !$omp sections lastprivate(v)
   allocate(v(2))
   v = -1
   if(d(1) .ne. 8.0)print*,"102"
   if(d(2) .ne. 8.0)print*,"103"
  !$omp end sections
  !$omp end parallel
  print*,"pass"
  end associate
  end subroutine
  end

