call test01()
call test02()
call test03()
print *,"pass"
end

subroutine test01()
integer(kind=8) :: a
pointer (i,j)
i=loc(a)
j=1
!$omp parallel default(firstprivate)
!$omp parallel default(firstprivate)
!$omp single
j=2
!$omp endsingle
!$omp end parallel
!$omp end parallel
if (j.ne.2) print *,"err"
end

subroutine test02()
integer(kind=8) :: a
pointer (i,j)
i=loc(a)
j=1
!$omp parallel default(firstprivate)
!$omp single
!$omp task
j=2
!$omp end task
!$omp endsingle
!$omp end parallel
if (j.ne.2) print *,"err"
end

subroutine test03()
integer(kind=8) :: a
pointer (i,j)
i=loc(a)
j=1
!$omp task
!$omp parallel default(firstprivate)
!$omp single
j=2
!$omp endsingle
!$omp end parallel
!$omp end task
if (j.ne.2) print *,"err"
end
