subroutine s32
  common /a32/ i
  common /c32/ j
  !$omp threadprivate(/a32/,/b32/,/c32/)
end subroutine s32

end
