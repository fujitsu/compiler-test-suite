  call s1
  call s2
print *,'pass'
contains
  subroutine s1
    !$OMP taskgroup  
    !$omp critical
    !$omp parallel
    !$omp sections
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end sections
    !$omp end parallel
    !$omp end critical
    !$omp end taskgroup
  end subroutine s1
  subroutine s2
    !$OMP taskgroup  
    !$omp critical
    !$omp parallel
    !$omp sections
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end sections
    !$omp end parallel
    !$omp end critical
    !$omp critical
    !$omp parallel
    !$omp sections
    !$omp simd
    do i = 1, 1
       do j = 1, 1
       end do
    end do
    !$omp end simd
    !$omp end sections
    !$omp end parallel
    !$omp end critical
    !$omp end taskgroup
  end subroutine s2
end program
