
x=1
!$omp atomic capture
x=x+1
v=x
!$omp end atomic
v=v
print *,'pass'
end
