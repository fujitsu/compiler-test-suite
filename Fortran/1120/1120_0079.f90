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
!$omp single
if (1.eq.2) print *,i
j=2
!$omp endsingle
!$omp end parallel
if (j.ne.2) print *,"err1"
end

subroutine test02()
integer(kind=8) :: a
pointer (i,j)
i=loc(a)
j=1
!$omp parallel default(firstprivate)
!$omp single
j=2
!$omp endsingle
!$omp end parallel
if (j.ne.2) print *,"err2"
end

subroutine test03()
integer(kind=8) :: a,aa
pointer (i,j)
i=loc(a)
j=1
!$omp parallel default(firstprivate)
!$omp single
i=loc(aa)
j=2
!$omp endsingle
!$omp end parallel
if (j.ne.1) print *,"err3"
end

subroutine test04()
integer(kind=8) :: a,aa
pointer (i,j)
i=loc(a)
j=1
!$omp parallel default(private)
!$omp single
i=loc(aa)
j=2
!$omp endsingle
!$omp end parallel
if (j.ne.1) print *,"err3"
end

subroutine test05()
integer(kind=8) :: a,aa
pointer (i,j)
i=loc(a)
j=1
!$omp parallel default(private)
!$omp single
i=loc(aa)
!$omp endsingle
!$omp end parallel
if (j.ne.1) print *,"err3"
end

subroutine test06()
integer(kind=8) :: a,aa
pointer (i,j)
i=loc(a)
j=1
!$omp parallel default(private)
!$omp single
if (1.eq.2) j=2
!$omp endsingle
!$omp end parallel
if (j.ne.1) print *,"err3"
end
