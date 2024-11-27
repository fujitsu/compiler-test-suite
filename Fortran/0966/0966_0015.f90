integer a,b
 common /com/a,b
!$omp parallel shared(/com/) private(a) 
 b=1
 a=1
!$omp endparallel
!$OMP TASK shared(/com/) private(a)
 b=111
 a=111
!$OMP END TASK
 end
