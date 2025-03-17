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

  if (a.ne.10) then
     print *,"NG:a=",a
  end if
  print *,"pass"
end program main

subroutine sub
  use shvar
  implicit none
  integer::i
  !$omp master
    do i=1,10
      !$omp task
        !$omp task
          !$omp atomic
            a=a+1
        !$omp end task
      !$omp end task
      !$omp taskwait
    end do
  !$omp end master
end subroutine sub
