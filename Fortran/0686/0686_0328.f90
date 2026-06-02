      character(len=10)::ch
      call sub(ch,10)
      print *,'pass'
      end

      subroutine sub(ch,len) 
      character(len)::ch
!$omp parallel private(ch)
      ch='ZzYyXxWwVv'
!$omp single
      ch='AaBb'//'CcDdEe'
!$omp end single copyprivate(ch)
      if (ch/='AaBbCcDdEe') then
        print *,ch
        print *,"fail"
      endif
!$omp end parallel
      end
