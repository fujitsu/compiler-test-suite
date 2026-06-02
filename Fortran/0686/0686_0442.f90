      module mod
        complex(4) ,allocatable,dimension(:,:)::ia
        complex(8) ,allocatable,dimension(:,:)::ib
        complex(16),allocatable,dimension(:,:)::ic
        complex(4) ,allocatable,dimension(:,:)::ja
        complex(8) ,allocatable,dimension(:,:)::jb
        complex(16),allocatable,dimension(:,:)::jc
      end module

      program ompv2workshare060
      call sub()
      print *,'pass'
      end

      subroutine sub
      use mod
      allocate(ia(1:2,2:3))
      allocate(ib(1:2,2:3))
      allocate(ic(1:2,2:3))
      allocate(ja(1:2,2:3))
      allocate(jb(1:2,2:3))
      allocate(jc(1:2,2:3))
      ia=(10.0e0,-10.0e0)
      ib=(100.0d0,-100.0d0)
      ic=(1000.0q0,-1000.0q0)
      ja=(10.0e0,-10.0e0)
      jb=(100.0d0,-100.0d0)
      jc=(1000.0q0,-1000.0q0)
!$omp parallel
!$omp workshare
      ia(1:2   ,2:3   )=ja(2:1:-1,3:2:-1)+(1.0e0,-1.0e0)
      ib(2:1:-1, :    )=jb(1:2   ,3:2:-1)+(1.0d0,-1.0d0)
      ic(2:1:-1,3:2:-1)=jc(2:1:-1,3:2:-1)+(1.0q0,-1.0q0)
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
