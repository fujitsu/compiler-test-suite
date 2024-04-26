module m1
contains
subroutine sub()
!$OMP parallel 
  !$OMP parallel 
    !$OMP parallel 
    !$OMP end parallel
  !$OMP end parallel
!$OMP end parallel
end subroutine
end

print *,'pass'
end
