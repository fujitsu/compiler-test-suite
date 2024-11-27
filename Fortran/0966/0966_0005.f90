namelist /na/ i,j
common /com/ i
!$omp parallel default(firstprivate)
i=1
!$omp endparallel
end
