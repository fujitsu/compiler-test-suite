
module mod_a
  integer a
end module mod_a

subroutine func
  use mod_a
  integer i
  !$omp do reduction(+:a) schedule(dynamic,1)
    do i=0,20
      a=a+1
    end do
end subroutine func

program main
  use mod_a
  !$omp parallel
    call func
  !$omp end parallel
  print *,"pass"
end program main
