program main
  implicit none
  character*3 :: ch

  ch = '20'

  call dummy(ch)

!$omp parallel
  block 
    character*3 :: ch;
    ch = '10'
    call dummy(ch)
    if ( ch .ne. '10' ) call abort()
  end block
!$omp end parallel

  if ( ch .ne. '20' ) call abort()

  print *, "PASS"
end

subroutine dummy(ch)
  implicit none
  character*3 ch
end

