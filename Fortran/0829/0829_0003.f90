
x=1
!$omp atomic capture
v=x
x=x+v
!$omp end atomic
v=v
print *,'pass'
end
