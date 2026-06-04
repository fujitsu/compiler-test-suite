complex a(10),ifun
CALL OMP_SET_NUM_THREADS(1)
j=2
!$OMP PARALLEL private(a) firstprivate(j) 
a(3)=(3,3)
!$omp atomic
a(3) = a(3)+ifun(j)
if (abs(a(3)-(13,13))>0.00001)print *,'error'
!$OMP END PARALLEL
print *,'pass'
end
complex function ifun(j)
ifun=cmplx(j*5,j*5)
end 
