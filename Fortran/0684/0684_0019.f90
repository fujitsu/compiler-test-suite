common /com1/  k1
!$omp threadprivate(/com1/)
data k1 / 111 /
if (k1/= 111) print *,'error'
print *,'pass'
end
