module mod
contains
subroutine sub()
contains
 subroutine isub()
!$OMP parallel
  !$OMP parallel
  !$OMP end parallel
!$OMP end parallel
 end subroutine
 subroutine isub2()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
 end subroutine
end subroutine
end

print *,'pass'
end
