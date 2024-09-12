           !$omp task
           do k=1,1
           !$omp task
           do k1=1,1
           enddo
           !$omp endtask
           enddo
           !$omp endtask
print *,'pass'
end
