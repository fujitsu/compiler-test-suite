      program main
!$omp parallel
      call sub
!$omp endparallel
      end

      subroutine sub
      i=1
!$omp flush(i)
      j=i
      print *,"j=",j
      end
