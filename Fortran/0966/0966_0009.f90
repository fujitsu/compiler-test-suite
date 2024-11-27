integer a,b
common /com/a,b
!$omp parallel firstprivate(/com/)
 !$OMP TASK private(/com/) shared(b)
 !$OMP TASK shared(/com/) private(a)
 !$OMP TASK firstprivate(/com/)
 a=1000
 !$OMP END TASK
 !$OMP END TASK
 !$OMP END TASK
!$omp endparallel
 print *,a
 end
