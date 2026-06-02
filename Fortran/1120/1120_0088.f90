integer a,b
 common /com/a,b
!$omp parallel shared(/com/)
 b=1
 a=1
!$omp endparallel
!$OMP TASK shared(/com/)
 b=111
 a=111
!$OMP END TASK
print *,"pass"
 end
