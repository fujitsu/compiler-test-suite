integer a(10)
j=2
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL private(a,k) firstprivate(j) 
a(3)=-1;a(4)=-1
k=-1
!$omp atomic
a(3) = iand(a(3),a(4)+a(4)-j-a(4)+j)
if (a(3)/=-1)print *,'error'
!$omp atomic
a(j+1) = iand(a(j+1),a(4)+a(4)-j-a(4)+j)
if (a(3)/=-1)print *,'error-2'
!$omp atomic
a(3) = iand(a(4)+a(4)-j-a(4)+j,a(3))
if (a(3)/=-1)print *,'error-3'
!$omp atomic
a(j+1) = iand(a(4)+a(4)-j-a(4)+j,a(j+1))
if (a(3)/=-1)print *,'error-4'
!$omp atomic
k = iand(k,a(3)+a(3)-j-a(3)+j)
if (k/=-1)print *,'error-5'
!$omp atomic
k = iand(a(3)+a(3)-j-a(3)+j,k)
if (k/=-1)print *,'error-6'
!$OMP END PARALLEL
print *,'pass'
end
function ifun(j)
ifun=j*5
end 
