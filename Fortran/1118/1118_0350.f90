call aaaa
call bbbb
print *,'pass'
end
subroutine aaaa
integer,dimension(:),allocatable::a1
allocate(a1(1))
!$omp task
!$omp parallel firstprivate(a1)
!$omp end parallel
!$omp end task
!$omp taskwait
end subroutine

subroutine bbbb
integer,dimension(:),allocatable::a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
allocate(a1(1),a2(1),a3(1),a4(1),a5(1),a6(1),a7(1),a8(1),a9(1),a10(1))
!$omp task 
!$omp parallel firstprivate(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
!$omp end parallel
!$omp end task
!$omp taskwait
end subroutine
