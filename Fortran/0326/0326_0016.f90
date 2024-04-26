module aaa
contains
  subroutine bbb
  contains
    subroutine ccc
      !$omp parallel
      !$omp parallel
      !$omp end parallel
      !$omp end parallel
    end subroutine ccc
    subroutine ccca
    end subroutine 
  end subroutine bbb
end module aaa

print *,"pass"
end
