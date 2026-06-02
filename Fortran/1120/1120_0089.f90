common /com/i
!$omp task default(private)
!$omp task shared(/com/)
i=1
!$omp endtask 
!$omp endtask 
print *,"pass"
end
