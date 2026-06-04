      character(len=10)::ch
      call sub(ch)
      print *,'pass'
      end

      subroutine sub(ch)
      character(*)::ch
!$omp parallel private(ch)
!$omp single
      ch='AaBb'//'CcDdEe'
!$omp end single copyprivate(ch)
      if (ch/='AaBbCcDdEe') print *,"fail"
!$omp end parallel
      end
