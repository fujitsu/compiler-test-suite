subroutine s21
  common /b21/ i
  !$omp threadprivate(/a21/,/b21/)
end subroutine s21
end
