subroutine s33
  common /a33/ i
  common /b33/ j
  !$omp threadprivate(/a33/,/b33/,/c33/)
end subroutine s33
end
