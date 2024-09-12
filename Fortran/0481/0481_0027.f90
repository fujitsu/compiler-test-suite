integer :: x,v
x=1
v=1
x=x
v=v
!$omp atomic capture
x=max(1,x)
v=x
!$omp endatomic 
print *,'pass'
end
