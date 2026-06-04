      call sub()
      print *,'pass'
      end

      subroutine sub
      common /com/ ia,ib
!$omp threadprivate(/com/)
      ia=10
      ib=100
!$omp parallel copyin(/com/)
!$omp single
      ia=ia+1
      ib=ib+1
!$omp end single copyprivate(ia,ib)
      if (ia/=11.or.ib/=101) print *,"fail"
!$omp end parallel
      end
