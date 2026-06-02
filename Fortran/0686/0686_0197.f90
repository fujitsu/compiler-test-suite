    program abc
      call sub()
      print *,'pass'
    end program abc
    subroutine sub()
     logical(1),allocatable,dimension(:)::allo_l1
     logical(2),allocatable,dimension(:)::allo_l2
     logical(4),allocatable,dimension(:)::allo_l4
     logical(8),allocatable,dimension(:)::allo_l8
     interface
       subroutine sub2(allo_l1,allo_l2,allo_l4,allo_l8)
         logical(1),allocatable,dimension(:)::allo_l1
         logical(2),allocatable,dimension(:)::allo_l2
         logical(4),allocatable,dimension(:)::allo_l4
         logical(8),allocatable,dimension(:)::allo_l8
       end subroutine sub2
     end interface
      allocate(allo_l1(1))
      allocate(allo_l2(2))
      allocate(allo_l4(4))
      allocate(allo_l8(8))
      allo_l1 = .false.
      allo_l2 = .false.
      allo_l4 = .false.
      allo_l8 = .false.
!$omp parallel private(allo_l1,allo_l2,allo_l4,allo_l8)
      allocate(allo_l1(1))
      allocate(allo_l2(2))
      allocate(allo_l4(4))
      allocate(allo_l8(8))
      allo_l1 = .false.
      allo_l2 = .false.
      allo_l4 = .false.
      allo_l8 = .false.
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
!$omp parallel private(allo_l1,allo_l2,allo_l4,allo_l8)
      call sub2(allo_l1,allo_l2,allo_l4,allo_l8)
!$omp end parallel
      if (any(allo_l1)) print *,"fail"
      if (any(allo_l2)) print *,"fail"
      if (any(allo_l4)) print *,"fail"
      if (any(allo_l8)) print *,"fail"
    end subroutine sub

    subroutine sub2(allo_l1,allo_l2,allo_l4,allo_l8)
     logical(1),allocatable,dimension(:)::allo_l1
     logical(2),allocatable,dimension(:)::allo_l2
     logical(4),allocatable,dimension(:)::allo_l4
     logical(8),allocatable,dimension(:)::allo_l8
      allocate(allo_l1(1))
      allocate(allo_l2(2))
      allocate(allo_l4(4))
      allocate(allo_l8(8))
      allo_l1 = .false.
      allo_l2 = .false.
      allo_l4 = .false.
      allo_l8 = .false.
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
    end subroutine sub2
