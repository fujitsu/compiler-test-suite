      integer,dimension(5)::a,b
!$omp parallel
!$omp workshare
      b=(/(i,i=1,5)/)
!$omp end workshare nowait
!$omp end parallel
      call sub(a,b)
      if (any(a/=(/5,4,3,2,1/))) print *,"fail"
      print *,'pass'
      end

      subroutine sub(a,b)
      integer,dimension(*)::a,b
!$omp parallel
!$omp workshare
       a(1)=b(5)
       a(2)=b(4)
       a(3)=b(3)
       a(4)=b(2)
       a(5)=b(1)
!$omp end workshare
!$omp end parallel
      end
