      call sub()
      print *,'pass'
      end

      subroutine sub()
      character(10)::ch
!$omp parallel private(ch)
!$omp single
      ch='AaBb'//'CcDdEe'
!$omp end single copyprivate(ch)
      if (ch/='AaBbCcDdEe') print *,"fail"
!$omp end parallel
      end
