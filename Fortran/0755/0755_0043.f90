subroutine s
  common /com/ l,n
  character(10,4) :: k(l:n)
  save
  !$omp threadprivate(k)
end subroutine s
end