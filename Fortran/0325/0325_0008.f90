module mod14
contains
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end

module mod13
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end

module mod12
contains
 subroutine sub01()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end


module mod14a
contains
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end

module mod15
contains
 subroutine sub01()
    !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
 end subroutine
 subroutine sub02()
  !$OMP parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP parallel
  !$OMP end parallel
  !$OMP end parallel
 end subroutine
end



print *,'pass'
end
