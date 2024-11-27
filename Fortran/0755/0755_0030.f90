program main
contains
subroutine s2
  common /foo/ l
  integer l
  integer k(l)
  save
  !$omp threadprivate(k)
end subroutine s2
end
