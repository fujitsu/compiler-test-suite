call test01()
print *,"pass"
end

subroutine test01()
integer arr(10)
arr=1
!$omp single
!$omp parallel shared(f,g)
if (1.eq.2)print *,"parallel :",loc(f)
!$omp task private(f) 
if (1.eq.2)print *,"task0 :",loc(f)
!$omp task shared(f)
if (1.eq.2)print *,"task1 :",loc(f)
!$omp task shared(f) 
if (1.eq.2)print *,"task2 :",loc(f)
!$omp end task
!$omp end task
!$omp end task
!$omp end parallel
!$omp end single
end 
