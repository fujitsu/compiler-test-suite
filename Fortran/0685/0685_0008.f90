    program aaa
      common /com/ i 
!$omp threadprivate(/com/)
      i=100
      call sub1()
      call sub2()
      i=100
      call sub3()
      print *,'pass'
    end program

    subroutine sub1()
      common /com/ i
      integer OMP_GET_THREAD_NUM
!$omp threadprivate(/com/)
!$omp parallel copyin(/com/)
      if (i/=100) print *,'1-',i
      i = OMP_GET_THREAD_NUM()
!$omp end parallel
    end subroutine

    subroutine sub2()
      common /com/ i
      integer OMP_GET_THREAD_NUM
!$omp threadprivate(/com/)
!$omp parallel private(k)
      k = OMP_GET_THREAD_NUM()
      if (i/=k) print *,'3-',i,k
!$omp end parallel
    end subroutine

    subroutine sub3()
      common /com/ i
      integer OMP_GET_THREAD_NUM
!$omp threadprivate(/com/)
!$omp parallel copyin(/com/)
      if (i/=100) print *,'4-',i
!$omp end parallel
    end subroutine
