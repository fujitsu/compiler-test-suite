integer a(10)
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL private(a,j,k,i)
i=9;j=2;k=2;a(i)=3
!$omp atomic
a(i) = max((j)+k, 3)+a(i)
write(10,*) a(i)
!$OMP END PARALLEL
rewind 10
read(10,*) k1
if (k1/=7)print *,'error-1'
print *,'pass'
end
