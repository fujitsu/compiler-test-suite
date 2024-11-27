subroutine s
  common /com/ l
  integer :: a,b(l),c
  save
  !$omp threadprivate(a,b,c)
end subroutine s
end
