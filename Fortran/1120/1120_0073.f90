call test01()
print *,"pass"
end

subroutine test01()
pointer (ip,ii)
!$omp task 
if (1.eq.2)print *,"task0 :",loc(ii)
!$omp task default(firstprivate)
if (1.eq.2)print *,"task0 :",loc(ii)
!$omp end task
!$omp end task
!$omp task
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp task default(firstprivate)
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp end task
!$omp end task

end subroutine
