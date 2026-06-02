      call sub() 
      print *,'pass'
      end

      subroutine sub()
      common /com/ i,j
!$omp threadprivate(/com/)

!$omp parallel
      i=1 ; j=1
!$omp endparallel

      j=100

!$omp parallel copyin(j)
      if (i/=1) print *,"fail"
      if (j/=100) print *,"fail"
!$omp endparallel

      i=10 ; j=10

!$omp parallel copyin(i,j)
      if (i/=10) print *,"fail"
      if (j/=10) print *,"fail"
      i=i+1 ; j=j+1
!$omp endparallel

!$omp parallel
      if (i/=11) print *,"fail"
      if (j/=11) print *,"fail"
!$omp endparallel

      i=10 ; j=10

!$omp parallel copyin(/com/)
      if (i/=10) print *,"fail"
      if (j/=10) print *,"fail"
!$omp endparallel

      end

      block data 
      common /com/ i(2)
      data i /1000,1000/
!$omp threadprivate(/com/)
      end block data
