  NAMELIST /nam/ a
  !$omp threadprivate(a)
  !$omp threadprivate(b)
  NAMELIST /nama/ b
  print *,'pass'
end
