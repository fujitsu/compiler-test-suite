      integer(4),dimension(2)::b=(/1,2/) 
      integer(4),dimension(2,3)::a
      logical(4)::l

      call sub(a,b,l)

      if (l) print *,"fail"

      print *,'pass'
      end

      subroutine sub(a,b,l)
      integer(4),dimension(2)::b
      integer(4),dimension(2,3)::a
      logical(4)::l
!$omp parallel workshare
      a = spread(b,2,3)
      l = any(a/=reshape((/1,2,1,2,1,2/),(/2,3/)))
!$omp end parallel workshare
      end
