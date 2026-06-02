       common /com/ j,k
       !$omp task
       k=1
       !$omp task private(/com/)
       !$omp endtask
       !$omp endtask
        print *,'pass'
        end
