    module mod
      integer(4)::ii
      real   (4)::rr
!$omp threadprivate(ii,rr)
    end module

    program ompv2
     use mod
!$omp parallel
      call sub()
!$omp end parallel
      print *,'pass'
    end program ompv2

    subroutine sub()
     use mod
      ii=10
      rr=10.0e0
!$omp single
      ii=ii+10
      rr=rr+10.0e0
!$omp end single copyprivate(ii,rr)
      if (ii/=20) print *,"fail"
      if (rr/=20.0e0) print *,"fail"
    end subroutine sub
