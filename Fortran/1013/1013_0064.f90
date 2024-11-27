integer(1),save::j1=1
!$omp threadprivate(j1)
print *,j1
end
