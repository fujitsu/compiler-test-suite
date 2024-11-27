subroutine s
  common /com/ l
  character :: k(l)
  save
  !$omp threadprivate(k)
end subroutine s
end
