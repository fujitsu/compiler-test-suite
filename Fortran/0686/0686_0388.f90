      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/ k,m
      k=10000
      m=-10000
!$omp parallel private(m    )
      k=1000
      m=-1000
!$omp do private(/com/)
      do i=1,2
        k=100
        m=-100
!$omp parallel private(/com/)
        k=10
        m=-10
!$omp do private(m    )
        do j=1,2
          k=5
          m=k-10
        enddo
!$omp enddo
        if (k/=5 ) print *,"fail"
        if (m/=-10) print *,"fail"
!$omp endparallel
        if (k/=100) print *,"fail"
        if (m/=-100) print *,"fail"
      enddo
!$omp enddo
      if (k/=1000) print *,"fail"
      if (m/=-1000) print *,"fail"
!$omp endparallel
      if (k/=1000) print *,"fail"
      if (m/=-10000) print *,"fail"
      end
