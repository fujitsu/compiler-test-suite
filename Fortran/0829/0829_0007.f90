integer :: x,v
x=1
v=1
x=x
v=v
!$omp atomic capture
v=x
x=(v)
!$omp endatomic 
print *,'pass'
end
