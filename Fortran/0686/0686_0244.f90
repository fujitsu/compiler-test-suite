      call sub()
      print *,'pass'
      contains
        subroutine sub()
        character(len=8),save::string
        integer(4)::me
  !$omp threadprivate(string)
        string='OPENMPV2'
  !$omp parallel
        string='openmpv2'
  !$omp single
        string='OpenMPV2'
  !$omp end single copyprivate(string)
        if (string /= 'OpenMPV2') print *,"fail"
  !$omp end parallel
        if (string /= 'OpenMPV2') print *,"fail"
        end subroutine sub
      end
