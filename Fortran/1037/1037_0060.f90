      subroutine sub(ib2)
      integer*4 ia1,ib2
      ia1=1
!$omp atomic
      ia1 = ia1 + 1
!$omp atomic
      ib2 = ib2 + 1
      if (ia1/=2)print *,'error-1'
      if (ib2/=2)print *,'error-2'
      return
      end
      integer*4 ib2
      ib2=1
      call       sub(ib2)
      print *,'pass'
      end
