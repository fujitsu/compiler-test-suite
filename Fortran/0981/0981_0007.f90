      common /com/i,j
      i=1 ; j=1
!$omp parallel default(firstprivate) shared(i)
      i=2 ; j=2
 !$omp parallel shared(/com/)
      i=3 ; j=3
 !$omp endparallel
 !$omp barrier
      if (i/=3.or.j/=3) write(6,*) "NG"
!$omp endparallel
      if (i/=3.or.j/=1) write(6,*) "NG"
print *,"pass"
      end
