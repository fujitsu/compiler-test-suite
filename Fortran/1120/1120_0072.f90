integer :: ip,jo/1/
save :: jj
save 
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ip),loc(jo),loc(jj)
!$omp task
if (1.eq.2)print *,"task0 :",loc(ip),loc(jo),loc(jj)
!$omp end task
!$omp end task
print *,"pass"
end 
