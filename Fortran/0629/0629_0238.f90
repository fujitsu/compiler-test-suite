      integer a(10)
!$omp workshare
      a=1
!$omp endworkshare
      print *,a
      end
