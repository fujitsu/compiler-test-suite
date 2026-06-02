      call sub()
      print *,'pass'
      contains
        subroutine sub()
        character(len=8)::string(2)
        string='OPENMPV2'
  !$omp parallel private(string)
        string=(/'openmpv2','openmpv3'/)
  !$omp single
        string=(/'OpenMPV2','OpenMPV3'/)
  !$omp end single copyprivate(string)
        if (any(string /= (/'OpenMPV2','OpenMPV3'/))) print *,"fail"
  !$omp end parallel
        if (any(string /= 'OPENMPV2')) print *,"fail"
        end subroutine sub
      end
