
module mod_a
  integer a,b
end module mod_a

subroutine func
  use mod_a
  !$omp sections reduction(+:a)
    !$omp section
      a=a+1
    !$omp section
      b=b+1
  !$omp end sections
end subroutine func

program main
  use mod_a
  a=0
  b=0
  !$omp parallel
    call func
  !$omp end parallel
  print *,"pass"
end program main
