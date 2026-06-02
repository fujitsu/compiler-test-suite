    module mod
      integer(4),allocatable,dimension(:)::ii
      real   (4),allocatable,dimension(:)::rr
!$omp threadprivate(ii,rr)
    end module

    program ompv2
     use mod
!$omp parallel
      call sub(2)
!$omp end parallel
      deallocate(ii,rr)
      print *,'pass'
    end program ompv2

    subroutine sub(n)
     use mod
      integer(4),external::OMP_GET_THREAD_NUM
      allocate(ii(n))
      allocate(rr(n))
      ii=(/(i,i=1,n)/)
      rr=real(ii)
!$omp single
      ii=ii+10
      rr=rr+10.0e0
!$omp end single copyprivate(ii,rr)
      if (any(ii/=(/11,12/))) print *,"fail"
      if (any(rr/=(/11.0e0,12.0e0/))) print *,"fail"
      if (OMP_GET_THREAD_NUM()/=0) then
        deallocate(ii,rr)
      endif
    end subroutine sub
