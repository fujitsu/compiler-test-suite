      call sub()
      print *,'pass'
      end

      subroutine sub()
      integer(4),dimension(2,3)::a,b
      integer(4),dimension(3  )::c,d
      logical(4)               ::l

!$omp parallel
!$omp workshare
      a = reshape((/1,2,3,4,5,6/),(/2,3/))
      c = (/1,2,3/)
      b = cshift(a,1)
      l = any(b/=reshape((/2,1,4,3,6,5/),(/2,3/)))
      b = cshift(a,-1,2)
      l = l .or. any(b/=reshape((/5,6,1,2,3,4/),(/2,3/)))
      b = cshift(a,c,1)
      l = l .or. any(b/=reshape((/2,1,3,4,6,5/),(/2,3/)))
      d = cshift(c,2)
      l = l .or. any(d/=(/3,1,2/))
!$omp end workshare
!$omp end parallel
      if (l) print *,"fail"
      end
