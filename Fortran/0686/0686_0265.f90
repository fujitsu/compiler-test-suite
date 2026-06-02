      call sub()
      print *,'pass'
      contains
        subroutine sub()
        integer(4),external::OMP_GET_THREAD_NUM
        logical(1),allocatable,dimension(:,:,:)::allo_l1
        logical(2),allocatable,dimension(:)::allo_l2
        logical(4),allocatable,dimension(:)::allo_l4
        logical(8),allocatable,dimension(:)::allo_l8
        save::allo_l1,allo_l2,allo_l4,allo_l8
  !$omp threadprivate(allo_l1,allo_l2,allo_l4,allo_l8)
        allocate(allo_l1(1,2,1)) ; allo_l1=.false.
        allocate(allo_l2(2)) ; allo_l2=.false.
        allocate(allo_l4(4)) ; allo_l4=.false.
        allocate(allo_l8(8)) ; allo_l8=.false.

  !$omp parallel
        if (OMP_GET_THREAD_NUM()/=0) then
          allocate(allo_l1(1,2,1))
          allocate(allo_l2(2))
          allocate(allo_l4(4))
          allocate(allo_l8(8))
        endif
  !$omp single
        allo_l1 = .true.
        allo_l2 = .true.
        allo_l4 = .true.
        allo_l8 = .true.
  !$omp end single copyprivate(allo_l1,allo_l2,allo_l4,allo_l8)
        if (.not.all(allo_l1)) print *,"fail"
        if (.not.all(allo_l2)) print *,"fail"
        if (.not.all(allo_l4)) print *,"fail"
        if (.not.all(allo_l8)) print *,"fail"
        deallocate(allo_l1)
        deallocate(allo_l2)
        deallocate(allo_l4)
        deallocate(allo_l8)
  !$omp end parallel
        end subroutine sub
      end
