      call sub()
      print *,'pass'
      contains
        subroutine sub()
        integer(2),parameter::n=2
        character(len=8),save::string(n)
        integer(4)::me
  !$omp threadprivate(string)
        string='OPENMPV2'
  !$omp parallel
        string='openmpv2'
  !$omp single
        string='OpenMPV2'
  !$omp end single copyprivate(string)
        if (any( string /= 'OpenMPV2') ) print *,"fail"
  !$omp end parallel
        if (any( string /= 'OpenMPV2') ) print *,"fail"
        end subroutine sub
      end
