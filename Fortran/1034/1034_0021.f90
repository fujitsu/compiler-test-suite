call sub1()
call sub2()
print *,'pass'
contains
subroutine sub1()
!$omp parallel
!$omp critical
 i = i+1
!$omp end critical
!$omp end parallel
end subroutine sub1
subroutine sub2()
!$omp parallel
!$omp critical
 j = j+1
!$omp end critical
!$omp end parallel
end subroutine sub2
end
