call test01()
print *,"pass"
end

subroutine test01()
!$omp task shared(ip)
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp task
if (1.eq.2)print *,"task0 :",loc(ip)
!$omp end task
!$omp end task
end subroutine
