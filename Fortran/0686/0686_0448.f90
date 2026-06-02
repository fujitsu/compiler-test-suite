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
!$omp parallel workshare
      forall(i=1:5)
       a(i)=b(6-i)
      endforall
!$omp end parallel workshare
      end
