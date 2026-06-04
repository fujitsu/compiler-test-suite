      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/ k
      k=100
!$omp parallel private(/com/)
      k=10
!$omp do private(/com/)
      do i=1,2
!$omp parallel private(/com/)
      k=-1
!$omp do private(/com/)
      do j=1,2
        k=j
      enddo
!$omp enddo
      if (k/=-1) print *,"fail"
!$omp endparallel
      enddo
!$omp enddo
      if (k/=10) print *,"fail"
!$omp endparallel
      if (k/=100) print *,"fail"
      end
