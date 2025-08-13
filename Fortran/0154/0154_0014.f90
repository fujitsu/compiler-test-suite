integer x
namelist /xyz/ x
x=1
write(2,*)'000'
write(2, xyz)
!$omp parallel default(firstprivate)
x=2
write(2, xyz)
!$omp end parallel
write(2, xyz)
print *,'pass'
end
