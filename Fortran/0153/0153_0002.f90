subroutine s1
!$omp parallel if(.false.)
write(1,*)1
!$omp end parallel
!$omp parallel
!$omp task
write(1,*)2
!$omp end task
!$omp end parallel
end
call s1
print *,'pass'
end
