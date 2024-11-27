subroutine s34
  common /a34/ i,j
  !$omp threadprivate(/a34/,/b34/,/c34/)
end subroutine s34
end
