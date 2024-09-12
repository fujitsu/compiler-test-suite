      common /com/ i
!$omp threadprivate(/com/)

!$omp parallel
      i=1
 !$omp parallel copyin(/com/)
  !$omp parallel

   !$omp parallel
   !$omp endparallel

   !$omp parallel copyin(i)
   !$omp endparallel
      i=2
  !$omp endparallel
 !$omp endparallel
!$omp endparallel
       print *,'pass'
      end
