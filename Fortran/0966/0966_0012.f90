!$omp task default(none) private(a,b)
!$omp task private(a)
b=1
c=1
!$omp endtask
!$omp task 
 a=111
d=1
!$omp endtask
!$omp endtask
end
