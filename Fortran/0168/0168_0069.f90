subroutine s1(k)
integer x(k)
!$omp parallel 
!$omp sections  private(x)
!$omp section
x=3
!$omp end sections
!$omp end parallel
end
call s1(2)
print *,'pass'
end
