    module mod
      type z
       sequence
        integer::i
      end type
    end module

    program aaa
      use mod
      type (z)::str
      common /com/ str
!$omp threadprivate(/com/)
      str%i=100
      call sub1()
      call sub2()
      str%i=100
      call sub3()
      print *,'pass'
    end program

    subroutine sub1()
      use mod
      type (z)::str
      common /com/ str
!$omp threadprivate(/com/)
      integer OMP_GET_THREAD_NUM

!$omp parallel copyin(str)
      if (str%i/=100) print *,'1-',str%i
      str%i = OMP_GET_THREAD_NUM()
!$omp end parallel
    end subroutine

    subroutine sub2()
      use mod
      type (z)::str
      common /com/ str
!$omp threadprivate(/com/)
      integer OMP_GET_THREAD_NUM

!$omp parallel private(k)
      k = OMP_GET_THREAD_NUM()
      if (str%i/=k) print *,'3-',str%i,k
!$omp end parallel
    end subroutine

    subroutine sub3()
      use mod
      type (z)::str
      common /com/ str
!$omp threadprivate(/com/)
      integer OMP_GET_THREAD_NUM

!$omp parallel copyin(/com/)
      if (str%i/=100) print *,'4-',str%i
!$omp end parallel
    end subroutine
