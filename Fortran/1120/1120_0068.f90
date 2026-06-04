call test01()
print *,"pass"
end

subroutine test01()
save
integer arr(10),f
arr=1
!$omp single
!$omp parallel
if (1.eq.2)print *,"parallel :",loc(f)
call sub()
!$omp end parallel
!$omp end single
contains
subroutine sub()
save :: f
f=1
if (1.eq.2)print *,"task :",loc(f)
!$omp task 
if (1.eq.2)print *,"task0 :",loc(f)
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
end subroutine
end 
