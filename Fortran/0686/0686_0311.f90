      integer :: a,b
      a = 100
      b = 200
!$omp parallel private(a,b)

!$omp single
      a = 111
      b = 222
!$omp end single copyprivate(a,b)

      if (a/=111.or.b/=222) print *,"fail"
!$omp end parallel

      print *,'pass'
    end 
