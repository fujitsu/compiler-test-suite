block data
common /ccc/ k1,k2
data k2/10/
!$omp threadprivate(/ccc/)
end

subroutine s1
common /ccc/ k1,k2
!$omp threadprivate(/ccc/)
k1=1
k2=k2+2
write(100,*)1,k1,k2
!$omp parallel
k1=k1+1
k2=k2+1
write(100,*)11,k1,k2
!$omp end parallel
write(100,*)2,k1,k2
end

call s1
print *,'pass'
end



 
