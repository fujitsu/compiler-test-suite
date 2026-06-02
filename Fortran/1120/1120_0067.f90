call test01()
print *,"pass"
end

subroutine test01()
save
common /com/ f,g
integer arr(10)
arr=1
!$omp single
!$omp parallel
if (1.eq.2)print *,"parallel :",loc(f)
!$omp task private(f)
!$omp task 
if (1.eq.2)print *,"task0 :",loc(f)
!$omp task
if (1.eq.2)print *,"task1 :",loc(f)
!$omp task 
if (1.eq.2)print *,"task2 :",loc(f)
!$omp end task
!$omp end task
!$omp end task
!$omp end task
!$omp end parallel
!$omp end single
end 
