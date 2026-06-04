integer a(10)
j=2
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL private(a,k) firstprivate(j) 
a(3)=-1;a(4)=a(3)
k=-1
!$omp atomic
a(3) = max(a(3),a(4)+a(4)-j-a(4)+j-1)
if (a(3)/=-1)print *,'error'
!$omp atomic
a(j+1) = max(a(j+1),a(4)+a(4)-j-a(4)+j-1)
if (a(3)/=-1)print *,'error-2'
!$omp atomic
a(3) = max(a(4)+a(4)-j-a(4)+j-1,a(3))
if (a(3)/=-1)print *,'error-3'
!$omp atomic
a(j+1) = max(a(4)+a(4)-j-a(4)+j-1,a(j+1))
if (a(3)/=-1)print *,'error-4'
!$omp atomic
k = max(k,a(4)+a(4)-j-a(4)+j-1)
if (k/=-1)print *,'error-5'
!$omp atomic
k = max(a(4)+a(4)-j-a(4)+j-1,k)
if (k/=-1)print *,'error-6'
!$OMP END PARALLEL
print *,'pass'
end
function ifun(j)
ifun=j*5
end 
