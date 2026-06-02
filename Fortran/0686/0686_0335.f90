      module mod
        complex(4),allocatable,dimension(:)::ia
        complex(8),allocatable,dimension(:)::ib
        complex(16),allocatable,dimension(:)::ic
!$omp threadprivate(ia,ib,ic)
      end module

      call sub()
      print *,'pass'
      end

      subroutine sub
      use mod

!$omp parallel
      allocate(ia(1))
      allocate(ib(1))
      allocate(ic(1))
      ia(1)=(10.0e0,-10.0e0)
      ib(1)=(100.0d0,-100.0d0)
      ic(1)=(1000.0q0,-1000.0q0)
!$omp single
      ia=ia+(1.0e0,-1.0e0)
      ib=ib+(1.0d0,-1.0d0)
      ic=ic+(1.0q0,-1.0q0)
!$omp end single copyprivate(ia,ib,ic)
      if (ia(1)/=(11.0e0,-11.0e0)) print *,"fail"
      if (ib(1)/=(101.0d0,-101.0d0)) print *,"fail"
      if (ic(1)/=(1001.0q0,-1001.0q0)) print *,"fail"
      deallocate(ia,ib,ic)
!$omp end parallel

      end
