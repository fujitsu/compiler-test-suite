      call OMP_SET_NUM_THREADS(1)
!$omp parallel
      call sub()
!$omp endparallel
      if (j/=10) print *,"fail"
      print *,'pass'
     contains

     subroutine sub()
      i=0
!$omp do firstprivate(i),lastprivate(i)
      do n = 1,10
         i=i+1
      enddo
!$omp enddo
      j=i
      end subroutine
     end
