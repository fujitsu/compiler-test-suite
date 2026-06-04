      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/ k
      k=100
!$omp parallel private(/com/)
!$omp parallel private(/com/)
!$omp parallel private(/com/)
      k=10
!$omp do private(k)
      do i=1,2
        k=i
      enddo
!$omp enddo
      if (k/=10) print *,"fail"
!$omp endparallel
!$omp endparallel
!$omp endparallel
      if (k/=100) print *,"fail"
      end
