integer a,b
 common /com/a,b
!$omp parallel default(shared)
!$OMP TASK shared(/com/) private(a)
 b=111
 a=111
!$OMP END TASK
print *,b
!$omp endparallel

 end
