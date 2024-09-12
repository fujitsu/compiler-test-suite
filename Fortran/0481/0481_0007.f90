
x=1
x1=1
!$omp atomic capture
v=x
x=x1+1
!$omp end atomic
v=v
print *,'pass'
end
