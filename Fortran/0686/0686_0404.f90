      integer(4),dimension(2,3)::a,b
      integer(4),dimension(2)  ::c
      integer(4),dimension(3)  ::d
      integer(4)               ::e
      logical(8),dimension(3)  ::ll
!$omp parallel workshare
      a = reshape((/1,2,3,4,5,6/),(/2,3/))
      b = reshape((/1,2,3,5,6,4/),(/2,3/))
!$omp end parallel workshare
      call sub(a,b,c,d,e)
!$omp parallel workshare
      ll(1) = (e/=3)
      ll(2) = (any(c/=(/(i,i=2,1,-1)/)))
      ll(3) = (any(d/=(/(i,i=2,0,-1)/)))
!$omp end parallel workshare
      if (any(ll)) print *,"fail"
      print *,'pass'
      end

      subroutine sub(a,b,c,d,e)
      integer(4),dimension(2,3)::a,b
      integer(4),dimension(2)  ::c
      integer(4),dimension(3)  ::d
      integer(4)               ::e

!$omp parallel workshare
      d = count(a==b,1)
      c = count(a==b,2)
      e = count(a==b)
!$omp end parallel workshare

      end
