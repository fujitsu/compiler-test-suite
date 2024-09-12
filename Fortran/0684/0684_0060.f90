!$omp parallel private(i)
      assign 30 to i
      goto i
      call errtra
30    continue
!$omp end parallel 
      assign 50 to i
      goto i
      call errtra
50    continue
!$omp parallel private(i)
      assign 60 to i
      goto i
      call errtra
60    continue
!$omp end parallel
      print *,'pass'
      end
