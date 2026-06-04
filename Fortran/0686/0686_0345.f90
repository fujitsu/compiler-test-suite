    program ompv2
      interface
        subroutine sub(a)
          integer(4),allocatable,dimension(:)::a
        end subroutine
      end interface

      integer(4),allocatable,dimension(:)::a
      allocate(a(1))
!$omp parallel private(a)
      call sub(a)
!$omp end parallel
      if (any(lbound(a)/=1)) print *,"fail"
      if (any(ubound(a)/=1)) print *,"fail"
      if (size(a)/=1) print *,"fail"
      deallocate(a)
      print *,'pass'
    end program

    subroutine sub(a)
      integer(4),allocatable,dimension(:)::a
      allocate(a(2:3))
!$omp single
      a=(/1,2/)
!$omp end single copyprivate(a)
      if (any(a/=(/1,2/))) print *,"fail"
      if (any(lbound(a)/=2)) print *,"fail"
      if (any(ubound(a)/=3)) print *,"fail"
      if (size(a)/=2) print *,"fail"
      deallocate(a)
    end subroutine
