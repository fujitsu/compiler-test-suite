      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/i,j
      i=1 ; j=1
!$omp parallel private(ii) shared(/com/)
      i=2 ; j=2 ; ii=1
!$omp endparallel
      if (i/=2.or.j/=2) print *,"fail"

      i=1 ; j=1
!$omp parallel default(private) shared(i)
      i=2 ; j=2
 !$omp parallel shared(/com/)
      i=3 ; j=3
 !$omp endparallel
 !$omp barrier
      if (i/=3.or.j/=3) print *,"fail"
!$omp endparallel
      if (i/=3.or.j/=1) print *,"fail"
      end
