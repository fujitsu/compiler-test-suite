      call sub()
      print *,'pass'
      contains
        subroutine sub()
        character(len=8)::string(2,2)
        string='OPENMPV2'
  !$omp parallel private(string)
        string(:,1)=(/'openmpv2','openmpv3'/)
        string(:,2)=(/'openmpV2','openmpV3'/)
  !$omp single
        string(:,1)=(/'OpenMPV2','OpenMPV3'/)
        string(:,2)=(/'OpenMPv2','OpenMPv3'/)
  !$omp end single copyprivate(string)
        if (any(string(:,1) /= (/'OpenMPV2','OpenMPV3'/))) print *,"fail"
        if (any(string(:,2) /= (/'OpenMPv2','OpenMPv3'/))) print *,"fail"
  !$omp end parallel
        if (any(string /= 'OPENMPV2')) print *,"fail"
        end subroutine sub
      end
