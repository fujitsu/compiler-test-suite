integer :: v(2), w(2), x(2)
x=1
v=1
w=1
!$omp atomic capture
  x(1) = max(v(1), x(1))
  v(1) = x(1)
!$omp end atomic
!$omp atomic capture
  x(1) = max(v(1), w(1), x(1))
  v(1) = x(1)
!$omp end atomic
end
