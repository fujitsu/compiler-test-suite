  module mod
!$omp threadprivate(i)
    integer:: i = 1
!$omp threadprivate(j)
    integer:: j = 2
  end module mod

  program main
  print *,"PASS"
  end program
