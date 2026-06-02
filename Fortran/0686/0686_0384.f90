      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/ k,m
      k=100
      m=-100
!$omp parallel private(/com/)
      k=10
      m=-10
!$omp do private(k    )
      do i=1,2
!$omp parallel private(m    )
      k=-1
      m=1
!$omp do private(/com/)
      do j=1,2
        k=j
        m=j
      enddo
!$omp enddo
      if (k/=-1) print *,"fail"
      if (m/=1) print *,"fail"
!$omp endparallel
      enddo
!$omp enddo
      if (k/=10) print *,"fail"
      if (m/=-10) print *,"fail"
!$omp endparallel
      if (k/=100) print *,"fail"
      if (m/=-100) print *,"fail"
      end
