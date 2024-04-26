program main
  pointer(p, jj(2))
  integer,save,dimension(2) :: aa

  p = loc(aa)
  jj = 20

  call test()

  if ( any(jj .ne. 20) ) call abort()

  print *, "PASS"
end

subroutine test()
  save::p
  pointer(p, jj(2))
  integer,save,dimension(2) :: bb
!$omp threadprivate(p)
!$omp parallel
    p = loc(bb)
    jj = 10
    call dummy(jj)
    if ( any(jj .ne. 10) ) call abort()
!$omp end parallel
contains 
subroutine dummy(i)
  implicit none
  integer,dimension(2) :: i
  i=i+0
end subroutine
end
