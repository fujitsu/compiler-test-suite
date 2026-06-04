      module mod
        integer,dimension (2,3)::a,b
        logical,dimension (2)::c
        logical,dimension (3)::d
        logical ::e
      end module

      use mod

!$omp parallel workshare
      a =reshape((/1,2,3,4,5,6/),(/2,3/))
      b =reshape((/1,2,3,5,6,4/),(/2,3/))
!$omp end parallel workshare

      call sub()

      if (      e) print *,"fail"
      if (.not. d(1)) print *,"fail"
      if (      d(2)) print *,"fail"
      if (      d(3)) print *,"fail"
      if (      c(1)) print *,"fail"
      if (      c(2)) print *,"fail"

      print *,'pass'
      end

      subroutine sub()
      use mod
!$omp parallel workshare
      e = all(a==b)
      d = all(a==b,1)
      c = all(a==b,2)
!$omp end parallel workshare
      end
