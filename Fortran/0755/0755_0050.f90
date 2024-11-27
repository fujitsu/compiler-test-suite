subroutine s
  common /com/ l
  integer :: a(l),b(l),c(l)
  save
  !$omp threadprivate(a,b,c)
end subroutine s
end
