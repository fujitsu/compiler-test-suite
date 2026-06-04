      integer(4),parameter::i1=1,i2=2,j1=2,j2=3
      complex(4),dimension(i1:i2,j1:j2)::ia
      complex(8),dimension(i1:i2,j1:j2)::ib
      complex(16),dimension(i1:i2,j1:j2)::ic
      call sub(ia,ib,ic,i1,i2,j1,j2)
      print *,'pass'
      end

      subroutine sub(ia,ib,ic,i1,i2,j1,j2)
        complex(4) ,dimension(i1:i2,j1:j2)::ia
        complex(8) ,dimension(i1:i2,j1:j2)::ib
        complex(16),dimension(i1:i2,j1:j2)::ic

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
