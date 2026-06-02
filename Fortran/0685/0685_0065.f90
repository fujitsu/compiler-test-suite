      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/i,j
      call OMP_SET_NUM_THREADS(1)
      i=1 ; j=1 ; jj=1
!$omp parallel firstprivate(jj),shared(/com/)
      i=2
      if (i/=2.or.j/=1) print *,"fail"
!$omp endparallel
      if (i/=2.or.j/=1) print *,"fail"

      call OMP_SET_NUM_THREADS(1)
      i=1 ; j=1
!$omp parallel private(ii,jj) shared(/com/)
      i=2 ; j=2
!$omp endparallel
      if (i/=2.or.j/=2) print *,"fail"

      call OMP_SET_NUM_THREADS(1)
      i=1 ; j=1
!$omp parallel firstprivate(ii,jj) shared(/com/)
      if (i/=1.or.j/=1) print *,"fail"
      i=2 ; j=2
!$omp endparallel
      if (i/=2.or.j/=2) print *,"fail"

      call OMP_SET_NUM_THREADS(1)
      i=1 ; j=1
!$omp parallel default(private) shared(i,j)
      if (i/=1.or.j/=1) print *,"fail"
      i=2 ; j=2
 !$omp parallel shared(/com/)
      if (i/=2.or.j/=2) print *,"fail"
      i=3 ; j=3
 !$omp endparallel
      if (i/=3.or.j/=3) print *,"fail"
!$omp endparallel
      if (i/=3.or.j/=3) print *,"fail"
      end
