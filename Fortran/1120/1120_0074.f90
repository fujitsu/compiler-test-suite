integer :: ip
save
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp end task
!$omp end task

!$omp parallel
!$omp single
call sub()
!$omp endsingle
!$omp end parallel
end

subroutine sub()
integer :: ip
save
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp end task
!$omp end task
print *,"pass"
end
