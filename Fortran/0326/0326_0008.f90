module aaa
contains
  subroutine bbb
  contains
    subroutine ccca
      !$omp parallel
      !$omp end parallel
    end subroutine
    subroutine ccc
      !$omp parallel
      !$omp end parallel
      !$omp parallel
      !$omp parallel
      !$omp parallel
      !$omp parallel
      !$omp parallel
      !$omp parallel
      !$omp end parallel
      !$omp end parallel
      !$omp end parallel
      !$omp end parallel
      !$omp end parallel
      !$omp end parallel
    end subroutine ccc
  end subroutine bbb
end module aaa

print *,"pass"
end
