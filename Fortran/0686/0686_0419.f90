      call sub()
      print *,'pass'
      end

      subroutine sub()
      integer(4),dimension(2,3)::a,b
      integer(4),dimension(3  )::c,d

      a = reshape((/1,2,3,4,5,6/),(/2,3/))
      c = (/1,2,3/)
!$omp parallel
!$omp workshare
      b = eoshift(a,1)
!$omp end workshare
!$omp single
      if (any(b/=reshape((/2,0,4,0,6,0/),(/2,3/)))) print *,"fail"
!$omp end single
!$omp workshare
      b = eoshift(a,-1,0,2)
!$omp end workshare
!$omp master
      if (any(b/=reshape((/0,0,1,2,3,4/),(/2,3/)))) print *,"fail"
!$omp end master
!$omp barrier
!$omp workshare
      b = eoshift(a,-c,1)
!$omp end workshare
!$omp single
      if (any(b/=reshape((/1,1,1,1,1,1/),(/2,3/)))) print *,b    
!$omp end single
!$omp workshare
      d = eoshift(c,2)
!$omp end workshare
!$omp master
      if (any(d/=(/3,0,0/))) print *,"fail"
!$omp end master
!$omp barrier
!$omp end parallel
      end
