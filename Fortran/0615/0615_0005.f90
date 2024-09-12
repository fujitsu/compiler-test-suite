    integer(4),dimension(1)::l

      call sub1(l)
    end program

    subroutine sub1(l)
      integer(4),dimension(1)::l
!$omp parallel private(l)
!$omp single
      l=1
!$omp end single copyprivate(l)
!$omp end parallel
    end subroutine sub1

