      integer :: a,b
      a = 100
      b = 200
!$omp parallel firstprivate(a,b)
      call sub(a,b)
      if (a/=111.or.b/=222) print *,"fail"
!$omp end parallel
      print *,'pass'
    end 

    subroutine sub(a,b)
      integer :: a,b
!$omp single
      a = a + 11
      b = b + 22
!$omp endsingle copyprivate(a,b)
    end
