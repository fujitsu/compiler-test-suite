      integer(4)::a(10),b(2,2)
!$omp parallel
!$omp workshare
      a=1
      b=1
      i=1
      a(10)=10
      k=i
      b(2,2)=2
!$omp end workshare nowait
!$omp end parallel 
      if (i/=1) print *,"fail"
      if (k/=1) print *,"fail"
      if (any(a/=(/1,1,1,1,1,1,1,1,1,10/))) print *,"fail"
      if (b(1,1)/=1) print *,"fail"
      if (b(2,1)/=1) print *,"fail"
      if (b(1,2)/=1) print *,"fail"
      if (b(2,2)/=2) print *,"fail"
      print *,'pass'
      end
