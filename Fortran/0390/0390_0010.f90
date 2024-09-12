module foo
common /t/ a
!$OMP threadprivate(/t/)
end module 
subroutine bar
use foo
a=1
end subroutine 
common /t/ a
!$OMP threadprivate(/t/)
call bar
if (abs(a-1)>0.0001)print *,'error'
print *,'pass'
end

