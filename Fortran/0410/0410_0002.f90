equivalence(k1,k2)
common /com/ k1
!$omp threadprivate(/com/)
print *,'pass'
end
