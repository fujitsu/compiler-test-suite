

  subroutine sub1
    integer x
    x=1
  end subroutine

  !$omp task default(none)
  !$omp task

      call sub1

  !$omp end task
  !$omp end task

  print *,"pass"
  end program

