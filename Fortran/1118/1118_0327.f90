call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
common /com/ k,i
equivalence (i,j)
namelist /nam/i,j,k
k=3
i=4
!$omp parallel default(firstprivate)
!$omp task
i=1
j=2
k=1
write(3,nam)
!$omp end task
!$omp end parallel
end
subroutine bbbbb
common /com/ k,i
equivalence (i,j)
namelist /nam/i,j,k
k=3
i=4
!$omp task default(firstprivate)
!$omp parallel
i=1
j=2
k=1
write(4,nam)
!$omp end parallel
!$omp end task
end
