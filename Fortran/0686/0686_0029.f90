call test01()
print *,'pass'
end 

subroutine test01()
!$omp critical (va)
i=1
!$omp end critical (va)
call sub()
contains
subroutine sub()
!$omp critical (va1)
i=1
!$omp end critical (va1)
end subroutine
end
