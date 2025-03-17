      i=0
      j=0
      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_MAX_ACTIVE_LEVELS(.true.)
      call sub(i,j)
      if (i/=200.or.j/=20) write(6,*) "NG"
      print *,'pass'
      end

      recursive subroutine sub(i,j)
      integer(4)::i,j
      j=j+1
!$omp parallel
!$omp sections reduction(+:i)
!$omp section
      i=i+1
!$omp section
      i=i+2
!$omp section
      i=i+3
!$omp section
      i=i+4
!$omp endsections
!$omp endparallel
      if (j>=20) return
      call sub(i,j)
      end subroutine
