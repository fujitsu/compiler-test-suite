integer :: x,v,x1,v1
x=1
v=1
x=x
v=v
x1=1
v1=1
!$omp atomic capture
v=x
x=v1
!$omp endatomic 
!$omp atomic capture
v=x
x=x1+1
!$omp endatomic 
print *,'pass'
end
