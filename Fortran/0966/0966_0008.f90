
integer , pointer :: j
integer , target  :: k
common /com/ j,k

     !$omp task
     k=1
     !$omp task private(/com/) shared(j)
     print *,"3:",loc(j)
     !$omp endtask
     !$omp endtask
end
