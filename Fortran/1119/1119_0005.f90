  call s1
  call s2
  call s3
  call s4
  print *,'pass'
end program
subroutine s1
  !$omp parallel
  !$omp cancellation point parallel
  !$omp end parallel
  end
subroutine s2
  !$omp do
  do i=1,1
     !$omp cancellation point do
     enddo
  !$omp end do
  end
subroutine s3
  !$omp sections
  !$omp cancellation point sections
  !$omp end sections
  end
subroutine s4
  !$omp task
  !$omp cancellation point taskgroup
  !$omp end task
  end
