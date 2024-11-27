subroutine s35
  common /b35/ i,j
  !$omp threadprivate(/a35/,/b35/,/c35/)
end subroutine s35

end
