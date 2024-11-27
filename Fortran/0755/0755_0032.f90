subroutine s
  common /foo/ l
  integer l
  integer k(l)
  save
  !$omp threadprivate(k)
end subroutine s
end
