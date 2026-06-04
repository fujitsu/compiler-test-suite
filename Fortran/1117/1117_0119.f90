call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
common /com01/ i,j,k
!$omp parallel private(/com01/)
i=1
!$omp endparallel
!$omp parallel private(/com01/)
j=1
!$omp endparallel
end

subroutine test02()
common /com01/ i,j,k,l
!$omp parallel private(/com01/)
i=1
!$omp endparallel
end

subroutine test03()
common /com02/ i,j,k,l,m
!$omp threadprivate(/com02/)
i=1
end

subroutine test04()
common /com02/ i,j,k,l,m,n
!$omp threadprivate(/com02/)
i=1
end
