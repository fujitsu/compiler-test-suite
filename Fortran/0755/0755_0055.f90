subroutine s31
  common /b31/ i
  common /c31/ j
  !$omp threadprivate(/a31/,/b31/,/c31/)
end subroutine s31
end
