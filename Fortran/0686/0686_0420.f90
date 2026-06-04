      call sub()
      print *,'pass'
      end

      subroutine sub()
      integer(4),dimension(2,3)::a,b,e,f
      integer(4),dimension(3  )::c,d

!$omp parallel
!$omp workshare
      a = reshape((/1,2,3,4,5,6/),(/2,3/))
      c = (/1,2,3/)
      b = cshift(a,1)
      e = cshift(a,-1,2)
      f = cshift(a,c,1)
      d = cshift(c,2)
!$omp end workshare
!$omp end parallel
      if (any(b/=reshape((/2,1,4,3,6,5/),(/2,3/)))) print *,"fail"
      if (any(e/=reshape((/5,6,1,2,3,4/),(/2,3/)))) print *,"fail"
      if (any(f/=reshape((/2,1,3,4,6,5/),(/2,3/)))) print *,"fail"
      if (any(d/=(/3,1,2/))) print *,"fail"
      end
