      module mod
        common /com/ string
        character(len=8),dimension(2,1)::string='OPENMPV2'
  !$omp threadprivate(/com/)
      end module mod

      program abc
      use mod
        call sub1()
        if (any(string /= 'OpenMPV2')) print *,"fail"
  !$omp parallel
        call sub2()
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

      subroutine sub2()
      use mod
        string='openmpv2'
  !$omp single
        string='OpenMPV2'
  !$omp end single copyprivate(string)
        if (any(string /= 'OpenMPV2')) print *,"fail"
      end subroutine sub2
