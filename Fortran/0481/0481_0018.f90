integer :: x(10),v(10)
v=1
x=1
!$omp atomic capture
v(1)=x(1)
x(2)=1
!$omp end atomic
v=v
print *,'pass'
end
