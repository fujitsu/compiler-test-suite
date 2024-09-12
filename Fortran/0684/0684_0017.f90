integer a(10)
CALL OMP_SET_NUM_THREADS(1)
j=2
!$OMP PARALLEL private(a) firstprivate(j) 
a(3)=3
!$omp atomic
a(3) = ifun(j)+a(3)
if (a(3)/=13)print *,'error'
!$OMP END PARALLEL
print *,'pass'
end
function ifun(j)
ifun=j*5
end 
