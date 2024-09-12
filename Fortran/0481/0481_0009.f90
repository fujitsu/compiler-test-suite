
i=1
x=1
!$omp atomic capture
v=x
x=x+i
!$omp end atomic
v=v
print *,'pass'
end
