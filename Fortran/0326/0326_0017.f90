module aaa
contains
  subroutine bbb
      !$omp parallel
      !$omp end parallel
  contains
    subroutine ccc
      !$omp parallel
      !$omp end parallel
    end subroutine ccc
  end subroutine bbb
subroutine kk
      !$omp parallel
      !$omp end parallel
  end subroutine
end module aaa

print *,"pass"
end
