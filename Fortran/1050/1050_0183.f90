!
!
!
!

module shvar
  implicit none
  integer::a=0
end module shvar

program main
  use shvar
  implicit none
  !$omp parallel
    call sub()
  !$omp end parallel

  if (a.ne.2) then
     print *,"NG:a=",a
  end if
  print *,"pass"
end program main

subroutine sub
  use shvar
  implicit none
  !$omp sections
    !$omp task
      !$omp task
        !$omp atomic
          a=a+1
        !$omp end task
      !$omp end task
    !$omp section
      !$omp task
        !$omp task
          !$omp atomic
            a=a+1
        !$omp end task
      !$omp end task
  !$omp end sections
end subroutine sub
