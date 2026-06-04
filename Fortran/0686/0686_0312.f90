      integer(4) ::  p,q
      p=0
      q=0
!$omp parallel
      call sub(p,q)
!$omp end parallel
      print *,'pass'
      end

      subroutine sub(p,q)
      integer(4) :: p,q

      if (p/=0 .or. q/=0) print *,"fail"
!$omp barrier
!$omp single private(q)
      p=1
      q=1
!$omp end single copyprivate(p)   
      if (p/=1 .or. q/=0) print *,"fail"

      end
