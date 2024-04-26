module aaa
contains
  subroutine bbb
  contains
    subroutine ccc
      !$omp parallel
      !$omp parallel
      !$omp parallel
      !$omp end parallel
      !$omp end parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp parallel
      !$omp end parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp end parallel
    end subroutine ccc
  end subroutine bbb
end module aaa

print *,"pass"
end
