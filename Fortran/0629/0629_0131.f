      integer a(10),b(10)
!$omp parallel
      a=1
!$omp workshare
      forall(i=1:10)
        b(i)=a(i)
      end forall
!$omp end workshare
!$omp end parallel
      print*,b
      end
