      integer(4),dimension(3)::b=(/1,2,3/) 
      integer(4),dimension(3,5)::a
      logical(4)::l

      call sub(a,b,l)

      if (l) print *,"fail"

      print *,'pass'
      end

      subroutine sub(a,b,l)
      integer(4),dimension(3)::b
      integer(4),dimension(3,5)::a
      logical(4)::l
!$omp parallel workshare
      a = spread(b,2,5)
      l = any(a/=reshape((/(1,2,3,i=1,5)/),(/3,5/)))
!$omp end parallel workshare
      end
