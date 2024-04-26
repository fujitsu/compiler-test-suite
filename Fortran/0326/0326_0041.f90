module m1
contains
subroutine sub()
!$OMP parallel
  !$OMP parallel
  !$OMP end parallel
!$OMP end parallel
contains
 subroutine isub()
  !$OMP parallel
  !$OMP end parallel
 end subroutine
 subroutine isub2()
 end subroutine
end subroutine
end

print *,'pass'
end
