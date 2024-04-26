module mod14
contains
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
 subroutine sub04()
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
 subroutine sub01()
  contains
   subroutine isub01()
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
   end subroutine
 end subroutine
 subroutine sub03()
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end

print *,'pass'
end
