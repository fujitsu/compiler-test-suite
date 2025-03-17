!$omp parallel private(i)
      assign 30 to i
      goto i
      print *,"fail"
30    continue
!$omp end parallel 
      assign 50 to i
      goto i
      print *,"fail"
50    continue
!$omp parallel private(i)
      assign 60 to i
      goto i
      print *,"fail"
60    continue
!$omp end parallel
      print *,'pass'
      end
