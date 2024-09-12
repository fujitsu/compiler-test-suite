integer :: x,v
x=1
v=1
x=x
v=v
v1=1
!$omp atomic capture
v=x
x=(v1)
!$omp endatomic 
print *,'pass'
end
