      module mod
        complex(4),allocatable,dimension(:,:)::ia
        complex(8),allocatable,dimension(:,:)::ib
        complex(16),allocatable,dimension(:,:)::ic
      end module

      call sub()
      print *,'pass'
      end

      subroutine sub
      use mod

      allocate(ia(1:2,2:3))
      allocate(ib(1:2,2:3))
      allocate(ic(1:2,2:3))
      ia=(10.0e0,-10.0e0)
      ib=(100.0d0,-100.0d0)
      ic=(1000.0q0,-1000.0q0)
!$omp parallel
!$omp workshare
      ia(1: ,2: )=ia( :2,2: )+(1.0e0,-1.0e0)
      ib(1:2, : )=ib( : ,2:3)+(1.0d0,-1.0d0)
      ic( : ,2:3)=ic( : ,2:3)+(1.0q0,-1.0q0)
!$omp end workshare
!$omp end parallel

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
      deallocate(ia,ib,ic)

      end
