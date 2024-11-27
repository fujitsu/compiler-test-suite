subroutine s22
  common /a22/ i
  !$omp threadprivate(/a22/,/b22/)
end subroutine s22
end
