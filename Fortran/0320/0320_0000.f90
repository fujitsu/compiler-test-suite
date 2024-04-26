program main
  implicit none
  integer,save :: ii

  ii = 20

  call test()

  if ( ii .ne. 20 ) call abort()

  print *, "PASS"
end

subroutine dummy(i)
  implicit none
  integer i
  i=i+0
end

subroutine test()
  implicit none
  integer,save:: ii;
!$omp threadprivate(ii)
!$omp parallel
    ii = 10
    call dummy(ii)
    if ( ii .ne. 10 ) call abort()
!$omp end parallel
end
