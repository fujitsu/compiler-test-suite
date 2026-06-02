      module mod
        character(len=8)::string(10)='OPENMPV2'
  !$omp threadprivate(string)
      end module mod

      program abc
      use mod
        call sub1()
        if (any(string /= 'OpenMPV2')) print *,"fail"
  !$omp parallel
        call sub2(string,10)
  !$omp end parallel
        print *,'pass'
      end program abc

      subroutine sub1()
      use mod
  !$omp parallel
        string='openmpv2'
  !$omp single
        string='OpenMPV2'
  !$omp end single copyprivate(string)
        if (any(string /= 'OpenMPV2')) print *,"fail"
  !$omp end parallel
      end subroutine sub1

      subroutine sub2(string,n)
        character(len=8)::string(n)
        string='openmpv2'
  !$omp single
        string='OpenMPV2'
  !$omp end single copyprivate(string)
        if (any(string /= 'OpenMPV2')) print *,"fail"
      end subroutine sub2
