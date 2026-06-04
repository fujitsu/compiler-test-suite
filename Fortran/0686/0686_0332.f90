      module mod
        complex(4)::ia
        complex(8)::ib
        complex(16)::ic
!$omp threadprivate(ia,ib,ic)
      end module

      call sub()
      print *,'pass'
      end

      subroutine sub
      use mod

      ia=(10.0e0,-10.0e0)
      ib=(100.0d0,-100.0d0)
      ic=(1000.0q0,-1000.0q0)
!$omp parallel copyin(ia,ib,ic)
!$omp single
      ia=ia+(1.0e0,-1.0e0)
      ib=ib+(1.0d0,-1.0d0)
      ic=ic+(1.0q0,-1.0q0)
!$omp end single copyprivate(ia,ib,ic)
      if (ia/=(11.0e0,-11.0e0)) print *,"fail"
      if (ib/=(101.0d0,-101.0d0)) print *,"fail"
      if (ic/=(1001.0q0,-1001.0q0)) print *,"fail"
!$omp end parallel
      end
