subroutine s
  common /foo/ l
  integer l
  integer k(l)
  !$omp threadprivate(k)
end subroutine s
end
