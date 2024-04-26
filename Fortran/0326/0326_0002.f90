module aaa
contains
  subroutine bbb
  contains
    subroutine ccc
      !$omp parallel
      !$omp end parallel
    end subroutine
  end subroutine bbb
  subroutine bbba
  contains
    subroutine ccca
      !$omp parallel
      !$omp end parallel
    end subroutine
  end subroutine bbba

end module aaa

print *,"pass"
end
