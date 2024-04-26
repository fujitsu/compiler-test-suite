module mod
contains
subroutine sub()
contains
 subroutine subb()
!$OMP parallel
!$OMP end parallel
 end subroutine
 subroutine subb1()
!$OMP parallel
!$OMP end parallel
!$OMP parallel
!$OMP end parallel
 end subroutine
 subroutine subb2()
!$OMP parallel
!$OMP parallel
!$OMP end parallel
!$OMP end parallel
 end subroutine
 subroutine subb3()
!$OMP parallel
!$OMP end parallel
!$OMP parallel
!$OMP parallel
!$OMP parallel
!$OMP end parallel
!$OMP end parallel
!$OMP end parallel
!$OMP parallel
!$OMP end parallel
!$OMP parallel
!$OMP parallel
!$OMP end parallel
!$OMP end parallel
 end subroutine
end subroutine
subroutine sub2()
contains
 subroutine subb()
!$OMP parallel
!$OMP end parallel
 end subroutine
 subroutine subb1()
!$OMP parallel
!$OMP end parallel
!$OMP parallel
!$OMP end parallel
 end subroutine
 subroutine subb2()
!$OMP parallel
!$OMP parallel
!$OMP end parallel
!$OMP end parallel
 end subroutine
 subroutine subb3()
!$OMP parallel
!$OMP end parallel
!$OMP parallel
!$OMP parallel
!$OMP parallel
!$OMP end parallel
!$OMP end parallel
!$OMP end parallel
!$OMP parallel
!$OMP end parallel
!$OMP parallel
!$OMP parallel
!$OMP end parallel
!$OMP end parallel
 end subroutine
end subroutine
end 

print *,"pass"
end
