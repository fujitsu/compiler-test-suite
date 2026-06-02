  call s1
  call s2
  call s3
  call s4
  print *,'pass'
contains
  subroutine s1
  !$omp parallel
     !$omp cancel parallel
    !$omp end parallel
  end subroutine s1
  subroutine s2
    !$omp do
    do i=1,1
   !$omp cancel do
       end do
  !$omp end do
  end subroutine s2
  subroutine s3
  !$omp sections
     !$omp cancel sections
  !$omp end sections
  end subroutine s3
  subroutine s4
  !$omp taskgroup
  !$omp taskgroup
  !$omp task
     !$omp cancel taskgroup
  !$omp end task
  !$omp taskgroup
  !$omp task
     !$omp cancel taskgroup
  !$omp end task
  !$omp endtaskgroup
  !$omp endtaskgroup
  !$omp endtaskgroup
  end subroutine s4
  end
