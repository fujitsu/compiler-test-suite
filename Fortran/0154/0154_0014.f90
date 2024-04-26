integer x
namelist /xyz/ x
x=1
write(1,*)'000'
write(1, xyz)
!$omp parallel default(firstprivate)
x=2
write(1, xyz)
!$omp end parallel
write(1, xyz)
print *,'pass'
end
