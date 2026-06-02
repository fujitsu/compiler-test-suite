call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
common /com01/i,j,k
!$omp threadprivate(/com01/)
i=1;j=2;k=3
call sub()
contains
subroutine sub()
common /com01/ ia(3)
!$omp threadprivate(/com01/)
if (ia(1).ne.1) print *,"fail"
if (ia(2).ne.2) print *,"fail"
if (ia(3).ne.3) print *,"fail"
end subroutine
end subroutine

subroutine test02()
common /com02/i,j,k
!$omp threadprivate(/com02/)
call sub()
if (i.ne.1) print *,"fail"
if (j.ne.2) print *,"fail"
if (k.ne.3) print *,"fail"
contains
subroutine sub()
common /com02/ ia(3)
!$omp threadprivate(/com02/)
ia=(/1,2,3/)
end subroutine
end subroutine

subroutine test03()
common /com03/i,j,k
data i,j,k /1,2,3/
!$omp threadprivate(/com03/)
call sub()
contains
subroutine sub()
common /com03/ ia(3)
!$omp threadprivate(/com03/)
if (ia(1).ne.1) print *,"fail"
if (ia(2).ne.2) print *,"fail"
if (ia(3).ne.3) print *,"fail"
end subroutine
end subroutine
