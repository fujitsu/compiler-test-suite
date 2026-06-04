      call sub
      print *,'pass'
      end

      subroutine sub()
      integer(4),allocatable,dimension(:)::a
      integer(4),pointer    ,dimension(:)::p
      save::a,p
      integer(4) OMP_GET_THREAD_NUM
!$omp threadprivate(a)
!$omp threadprivate(p)

!$omp parallel
      allocate(a(1:2))
!$omp single
      allocate(p(3:4))
      a=(/1,2/)
      p=(/3,4/)
!$omp endsingle copyprivate(a,p)
!$Omp critical
      if (.not. allocated(a) .or. .not. associated(p)) print *,"fail"
      if (any(a/=(/1,2/)) .or. any(p/=(/3,4/))) print *,"fail"
      if (lbound(a,1)/=1 .or. ubound(a,1)/=2) print *,"fail"
      if (lbound(p,1)/=3 .or. ubound(p,1)/=4) print *,"fail"
      if (OMP_GET_THREAD_NUM() /= 0) then
        deallocate(a)
      endif
!$Omp end critical
!$omp endparallel
      if (.not. allocated(a) .or. .not. associated(p)) print *,"fail"
      if (any(a/=(/1,2/)) .or. any(p/=(/3,4/))) print *,"fail"
      if (lbound(a,1)/=1 .or. ubound(a,1)/=2) print *,"fail"
      if (lbound(p,1)/=3 .or. ubound(p,1)/=4) print *,"fail"
      deallocate(a,p)
      end
