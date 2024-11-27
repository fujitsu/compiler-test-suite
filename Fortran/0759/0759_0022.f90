subroutine s(l)
  integer :: k(l)
  save
  !$omp threadprivate(l)
end subroutine

end
