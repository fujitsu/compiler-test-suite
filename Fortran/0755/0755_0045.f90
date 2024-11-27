subroutine s
  common /com/l
  integer :: a,b(l)
  save
  !$omp threadprivate(a,b)
end subroutine s
end
