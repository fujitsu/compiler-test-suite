call test01()
call test02()
print *,'pass'
end
subroutine test01()
common/com01/ i1
!$omp parallel  firstprivate(/com01/)
do i=1,10
i1=1
end do
!$omp end parallel
end

subroutine test02()
common/com02/ i1
!$omp parallel  firstprivate(i1)
do i=1,10
i1=1
end do
!$omp end parallel
end
