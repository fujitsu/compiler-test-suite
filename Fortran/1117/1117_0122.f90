call test03()
call test04()
print *,'pass'
end
subroutine test03()
common/com01/ i1
!$omp parallel do firstprivate(/com01/)
do i=1,10
i1=1
end do
!$omp end parallel do
end

subroutine test04()
common/com02/ i1
!$omp parallel do firstprivate(i1)
do i=1,10
i1=1
end do
!$omp end parallel do
end
