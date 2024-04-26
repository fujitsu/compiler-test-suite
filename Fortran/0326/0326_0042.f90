module m1
contains
subroutine sub()
!$OMP parallel
  !$OMP parallel
  !$OMP end parallel
!$OMP end parallel
contains
 subroutine isub()
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

subroutine sub()
!$OMP parallel
  !$OMP parallel
  !$OMP end parallel
!$OMP end parallel
contains
 subroutine isub()
 end subroutine
 subroutine isub2()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
 end subroutine
end subroutine
