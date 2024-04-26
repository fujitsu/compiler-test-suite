module m1
contains
subroutine sub()
!$OMP parallel 
!$OMP end parallel
!$OMP parallel 
!$OMP end parallel
end subroutine
end

print *,'pass'
end
