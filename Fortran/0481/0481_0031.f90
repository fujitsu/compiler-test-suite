integer :: x,v
x=1
v=1
x=x
v=v
v1=1
!$omp atomic capture
x=v
v=1**v1
!$omp endatomic 
print *,'pass'
end
