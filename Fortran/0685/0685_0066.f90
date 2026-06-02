common /com/i,j
      call OMP_SET_NUM_THREADS(1)
      call OMP_SET_MAX_ACTIVE_LEVELS(.false.)
      i=1;j=1
!$omp parallel default(private) shared(i,j)
      if (i/=1.or.j/=1) print *,"fail"
!$omp parallel shared(/com/)
      if (i/=1.or.j/=1) print *,"fail"
      i=2;j=2
!$omp endparallel
      if (i/=2.or.j/=2) print *,"fail"
!$omp endparallel
      if (i/=2.or.j/=2) print *,"fail"
print *,'pass'
end
