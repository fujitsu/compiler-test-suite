pointer i
common /a/ i
!$omp threadprivate(i)
end
