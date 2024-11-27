integer :: x,v
x=1
v=1
x=x
v=v
!$omp atomic capture
v=x
x=v
!$omp endatomic 
!$omp atomic capture
v=x
x=x+1
!$omp endatomic 
print *,'pass'
end
