      module mod
        integer(1)::ia
        integer(2)::ib
        integer(4)::ic
!$omp threadprivate(ia,ib,ic)
      end module

      call sub()
      print *,'pass'
      end

      subroutine sub
      use mod

      ia=10
      ib=100
      ic=1000
!$omp parallel copyin(ia,ib,ic)
!$omp single
      ia=ia+1_1
      ib=ib+1_2
      ic=ic+1_4
!$omp end single copyprivate(ia,ib,ic)
      if (ia/=11_1.or.ib/=101_2.or.ic/=1001_4) print *,"fail"
!$omp end parallel
      end
