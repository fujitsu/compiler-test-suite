program main
  implicit none
  integer,save,dimension(2) :: ii

  ii = 20

  call test()

  if ( any(ii .ne. 20) ) call abort()

  print *, "PASS"
end

subroutine dummy(i)
  implicit none
  integer,dimension(2) :: i
  i=i+0
end

subroutine test()
  implicit none
  integer,save,dimension(2) :: ii;
!$omp threadprivate(ii)
!$omp parallel
    ii = 10
    call dummy(ii)
    if ( any(ii .ne. 10) ) call abort()
!$omp end parallel
end
