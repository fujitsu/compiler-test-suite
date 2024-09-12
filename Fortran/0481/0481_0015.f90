
v=1
i=1
!$omp atomic write
x=1+v
!$omp atomic write
x=1
!$omp atomic capture
v=x
x=1+x
!$omp end atomic
!$omp atomic capture
v=x
x=i
!$omp end atomic
v=v
!$omp atomic capture
v=v+1
x=v
!$omp end atomic
print *,'pass'
end
