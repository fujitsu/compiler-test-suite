subroutine s
  common /com/l
  integer :: a(l),b
  save
  !$omp threadprivate(a,b)
end subroutine s
end