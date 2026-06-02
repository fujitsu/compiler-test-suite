      program ompv2
      integer(4),external::OMP_GET_NUM_THREADS,OMP_GET_THREAD_NUM
      integer(4),allocatable,dimension(:)::allo
      integer(8),allocatable,dimension(:)::address
      integer(8)::me
!$omp threadprivate(allo)

      allocate(allo(2))

!$omp parallel shared(address),private(me)
!$omp single
      no=OMP_GET_NUM_THREADS()
      allocate(address(0:no-1))
      print *,'pass'
!$omp end single
      me=OMP_GET_THREAD_NUM()
      if (me/=0) allocate(allo(2))
      address(me)=loc(allo)
!$omp single
      allo=(/1,2/)
      print *,'pass'
!$omp end single copyprivate(allo)
      if (any(allo/=(/1,2/))) print *,"fail"
      if (address(me)/=loc(allo)) print *,"fail"
      if (me/=0) then
        deallocate(allo)
        address(me)=loc(allo)
      endif
!$omp end parallel
      if (address(0)/=loc(allo)) print *,"fail"
      deallocate(allo)
      address(0)=loc(allo)
      if (any(address /= 0)) print *,"fail"
      print *,'pass'
      end program
