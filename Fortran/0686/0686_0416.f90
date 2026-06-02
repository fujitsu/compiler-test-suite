      integer(4),dimension(2,3)::a,c
      integer(4),dimension(3,2)::b
      logical(4)::l
!$omp parallel workshare
      a =reshape((/1,2,3,4,5,6/),(/2,3/))
!$omp end  parallel workshare
      call sub(a,b,c)
!$omp parallel workshare
      l = any( a /= c ) .or. any( b /= reshape((/1,3,5,2,4,6/),(/3,2/)) )
!$omp end  parallel workshare
      if (l) print *,"fail"
      print *,'pass'

      end

      subroutine sub(a,b,c)
      integer(4),dimension(2,3)::a,c
      integer(4),dimension(3,2)::b

!$omp parallel workshare
      b = transpose(a)
!$omp end parallel workshare

!$omp parallel workshare
      c = transpose(b)
!$omp end parallel workshare

      end
