namelist /na/i,k
namelist /naa/j,jj
!$omp threadprivate(i,j,jj)
!$ CALL OMP_SET_NUM_THREADS(1)
i=30
k=20
j=30
jj=40
!$omp parallel default(private)
write(20,naa)
j=1
jj=2
rewind 20
read(20,naa)
!$omp end parallel
if (j.ne.30) print *,'fail'
if (jj.ne.40) print *,'fail'
print *,'pass'
end

