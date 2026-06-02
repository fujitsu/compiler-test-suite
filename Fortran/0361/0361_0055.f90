i=10
!$omp parallel workshare default(firstprivate)
i1=1
i2=2
i3=3
i=i1*i2*i3
!$omp end parallel workshare

if (i == 6) print *,"fail"
if (i /= 10) print *,"fail"
print *,'pass'

end
