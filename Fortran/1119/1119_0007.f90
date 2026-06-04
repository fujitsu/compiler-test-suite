  call s1
  call s2
  call s3
  call s4
  print *,'pass'
contains
  subroutine s1
  !$omp parallel
     !$omp cancellation point parallel
    !$omp end parallel
  end subroutine s1
  subroutine s2
    !$omp do
    do i=1,1
   !$omp cancellation point do
       end do
  !$omp end do
  end subroutine s2
  subroutine s3
  !$omp sections
     !$omp cancellation point sections
  !$omp end sections
  end subroutine s3
  subroutine s4
  !$omp task
     !$omp cancellation point taskgroup
  !$omp end task
  end subroutine s4
  end
