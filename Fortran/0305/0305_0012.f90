subroutine sub(n3)
  integer(8) n3
  integer(8),dimension(n3)::f
!$omp single firstprivate(f)
!$omp end single
end subroutine sub

program main
  integer(8),parameter :: n = 10
  call sub(n)
  print *, 'pass'
end
