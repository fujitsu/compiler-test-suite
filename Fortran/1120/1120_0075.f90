!$omp parallel
call sub()
!$omp end parallel
print *,"pass"
end

subroutine sub()
!$omp threadprivate(ip)
integer :: ip
save
!$omp do
do i=1,1
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp end task
!$omp end task
end do
!$omp enddo
if (1.eq.2)print *,"pass"
end
