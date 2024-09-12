integer :: x,v
x=1
!$omp atomic capture
v=x
x=1
!$omp end atomic
v=v
print *,'pass'
end
