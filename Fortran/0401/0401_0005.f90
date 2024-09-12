block data
!$omp threadprivate(i,j)
save i
integer, save :: j
end block data
print *,'pass'
end
