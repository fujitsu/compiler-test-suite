
x=1
!$omp atomic capture
v=x
x=x+1
!$omp end atomic
v=v
print *,'pass'
end
