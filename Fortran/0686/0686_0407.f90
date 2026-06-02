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

      if (.not. e) print *,"fail"
      if (.not. d(1)) print *,"fail"
      if (.not. d(2)) print *,"fail"
      if (      d(3)) print *,"fail"
      if (.not. c(1)) print *,"fail"
      if (.not. c(2)) print *,"fail"

      print *,'pass'
      end

      subroutine sub()
      use mod
!$omp parallel workshare
      forall(i=10:1:-1,i==5)
        e = any(a==b)
        d = any(a==b,1)
        c = any(a==b,2)
      endforall
!$omp end parallel workshare
      end
