      integer,dimension (2,3)::a,b1,b2,b3
      integer,dimension (3)::c,d
      a =reshape((/1,2,3,4,5,6/),(/2,3/))
      c =(/1,2,3/)
      call sub (a,b1,b2,b3,c,d)
      print *,'pass'
      end

      subroutine sub(a,b1,b2,b3,c,d)
      integer,dimension (2,3)::a,b1,b2,b3
      integer,dimension (3)::c,d
      logical:: l1,l2,l3,l4

!$omp parallel workshare
      b1 =cshift(a,1)
!$omp end parallel workshare
!$omp parallel workshare
      b2 =cshift(a,-1,2)
!$omp end parallel workshare
!$omp parallel workshare
      b3 =cshift(a,c,1)
!$omp end parallel workshare
!$omp parallel workshare
      d =cshift(c,2)
!$omp end parallel workshare

!$omp parallel workshare
      l1 = any( b1 /= reshape((/2,1,4,3,6,5/),(/2,3/)) )
      l2 = any( b2 /= reshape((/5,6,1,2,3,4/),(/2,3/)) )
      l3 = any( b3 /= reshape((/2,1,3,4,6,5/),(/2,3/)) )
      l4 = any( d  /=  (/3,1,2/) )
!$omp end parallel workshare

      if (l1.or.l2.or.l3.or.l4) print *,"fail"
      end subroutine sub
