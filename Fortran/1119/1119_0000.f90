  call s1
  call s2
  call s3
  call s4
  print *,'pass'
end program
subroutine s1
  !$omp parallel
  !$omp cancel parallel
  !$omp end parallel
  end
subroutine s2
  !$omp do
  do i=1,1
     !$omp cancel do
     enddo
  !$omp end do
  end
subroutine s3
  !$omp sections
  !$omp cancel sections
  !$omp end sections
  end
subroutine s4
  !$omp taskgroup
  !$omp task
  !$omp cancel taskgroup
  !$omp end task
  !$omp end taskgroup
  end
