module mod15
contains
 subroutine sub04()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
 subroutine sub01()
  contains
   subroutine isub02()
  !$OMP parallel
  !$OMP end parallel
   end subroutine
 end subroutine
end

print *,'pass'
end
