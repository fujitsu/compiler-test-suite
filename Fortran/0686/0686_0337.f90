      module mod
        complex(4),dimension(1:2,2:3)::ia
        complex(8),dimension(1:2,2:3)::ib
        complex(16),dimension(1:2,2:3)::ic
      end module

      call sub()
      print *,'pass'
      end

      subroutine sub
      use mod

!$omp parallel private(ia,ib,ic)
      ia=(10.0e0,-10.0e0)
      ib=(100.0d0,-100.0d0)
      ic=(1000.0q0,-1000.0q0)
!$omp single
      ia(:,:)=ia(:,:)+(1.0e0,-1.0e0)
      ib(:,:)=ib(:,:)+(1.0d0,-1.0d0)
      ic(:,:)=ic(:,:)+(1.0q0,-1.0q0)
!$omp end single copyprivate(ia,ib,ic)
      if (ia(1,2) /= (11.0e0,-11.0e0)) print *,"fail"
      if (ia(2,2) /= (11.0e0,-11.0e0)) print *,"fail"
      if (ia(1,3) /= (11.0e0,-11.0e0)) print *,"fail"
      if (ia(2,3) /= (11.0e0,-11.0e0)) print *,"fail"
      if (ib(1,2) /= (101.0d0,-101.0d0)) print *,"fail"
      if (ib(2,2) /= (101.0d0,-101.0d0)) print *,"fail"
      if (ib(1,3) /= (101.0d0,-101.0d0)) print *,"fail"
      if (ib(2,3) /= (101.0d0,-101.0d0)) print *,"fail"
      if (ic(1,2) /= (1001.0q0,-1001.0q0)) print *,"fail"
      if (ic(2,2) /= (1001.0q0,-1001.0q0)) print *,"fail"
      if (ic(1,3) /= (1001.0q0,-1001.0q0)) print *,"fail"
      if (ic(2,3) /= (1001.0q0,-1001.0q0)) print *,"fail"
!$omp end parallel

      end
