subroutine s(a)
integer, target :: a
!$omp threadprivate(a)
end
end
