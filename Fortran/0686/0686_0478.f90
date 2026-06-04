      program ompv2
      interface
        subroutine sub(a)
          integer(4),dimension(:),allocatable::a
        end subroutine
      end interface
      integer(4),dimension(:),allocatable::a
      allocate(a(1:10))
      a(:)=(/1,2,3,4,5,6,7,8,9,10/)
      call sub(a)
      print *,'pass'
      end

      subroutine sub(a) 
      integer(4),dimension(:),allocatable::a
      logical(4),external::OMP_IN_PARALLEL
      logical(4)::l

!$omp parallel workshare
      l = any(a==0)
!$omp end parallel workshare

!$omp parallel if( l )
      if (OMP_IN_PARALLEL()) print *,"fail"
!$omp end parallel

      end subroutine 
