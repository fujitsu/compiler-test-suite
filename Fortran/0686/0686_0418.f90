      module mod
        integer(4),dimension(2,3)::a,c
        integer(4),dimension(3,2)::b
        logical(4)::l
      end module

      program aaa
      use mod
!$omp parallel workshare
      a =reshape((/1,2,3,4,5,6/),(/2,3/))
!$omp end  parallel workshare
      call sub()
!$omp parallel workshare
      l = any( a /= c ) .or. any( b /= reshape((/1,3,5,2,4,6/),(/3,2/)) )
!$omp end  parallel workshare
      if (l) print *,"fail"
      print *,'pass'

      end

      subroutine sub()
      use mod
!$omp parallel workshare
      forall (i=1:1:1 , i==1)
        b = transpose(a)
      end forall
!$omp end parallel workshare

!$omp parallel workshare
      forall (i=2:2:1 , i==2)
        c = transpose(b)
      end forall
!$omp end parallel workshare

      end
