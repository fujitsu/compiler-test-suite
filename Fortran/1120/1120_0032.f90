  common /com/ j,k
  common /com1/ j1,k1
  common /com2/ j2,k2
  common /com3/ j3,k3
  j=300
 !$omp task
   !$omp task
        k=1
     !$omp task private(/com/)
     !$omp endtask
   !$omp endtask

   !$omp task
        k1=1
     !$omp task firstprivate(/com1/,/com2/) shared(/com3/)
     !$omp endtask
   !$omp endtask
 !$omp endtask
     print *,'pass'
     end
