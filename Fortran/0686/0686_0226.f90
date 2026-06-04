      module mod
        character(len=8),dimension(3)::string='OPENMPV2'
      end module mod

      program abc
      use mod
        call sub1()
        if ( any( string(:) /= 'OPENMPV2' ) ) print *,"fail"
  !$omp parallel firstprivate(string)
        call sub2(string,3)
  !$omp end parallel
        print *,'pass'
      end program abc

      subroutine sub1()
      use mod
  !$omp parallel private(string)
        string='openmpv2'
  !$omp single
        string(1)='OpenMPV1'
        string(2)='OpenMPV2'
        string(3)='OpenMPV3'
  !$omp end single copyprivate(string)
        if (any( string /= (/'OpenMPV1','OpenMPV2','OpenMPV3'/) )) print *,"fail"
  !$omp end parallel
      end subroutine sub1

      subroutine sub2(string,n)
        character(len=8),dimension(n)::string
        string='openmpv2'
  !$omp single
        string(1)='OpenMPV1'
        string(2)='OpenMPV2'
        string(3)='OpenMPV3'
  !$omp end single copyprivate(string)
        if (any( string /= (/'OpenMPV1','OpenMPV2','OpenMPV3'/) )) print *,"fail"
      end subroutine sub2
