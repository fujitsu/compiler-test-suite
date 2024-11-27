subroutine s
  common /com/ l
  contains
    subroutine ss
      integer :: k(l)
      save
      !$omp threadprivate(k)
  end subroutine ss
end subroutine
end
