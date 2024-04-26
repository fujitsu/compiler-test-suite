  integer :: act(2)
  call s(act)
  contains
  subroutine s(v)
  integer :: v(:)
  v = 8
  associate(u => v)
  !$omp parallel private(v)   
   if(any(u .ne. 8))print*,"101"
   if(u(1) .ne. 8)print*,"102"
   if(u(2) .ne. 8)print*,"103"
  !$omp end parallel
  print*,"pass"
  end associate
  end subroutine
  end

