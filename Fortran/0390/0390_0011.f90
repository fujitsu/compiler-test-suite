common /t/ a
!$OMP threadprivate(/t/)
a=1
call foo
print *,'pass'
contains
subroutine foo 
common /t/ a
!$OMP threadprivate(/t/)
!$OMP parallel copyin(/t/)
if (abs(a-1)>0.0001)print *,'error'
!$OMP end parallel
end subroutine 
end

