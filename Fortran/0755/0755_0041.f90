subroutine s
  common /com/ l
  character(KIND=4) :: k(l)
  save
  !$omp threadprivate(k)
end subroutine s
end
