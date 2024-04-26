module mod01
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
 end subroutine
end

module mod02
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
 end subroutine
 subroutine sub02()
 end subroutine
end

module mod03
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
 end subroutine
end

module mod04
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
 end subroutine
 subroutine sub03()
 end subroutine
end

module mod05
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
 end subroutine
end

module mod06
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
 end subroutine
 subroutine sub02()
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
 end subroutine
end

module mod07
contains
 subroutine sub01()
!$omp parallel
!$omp end parallel
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
 end subroutine
end

module mod08
contains
 subroutine sub01()
 end subroutine
 subroutine sub02()
!$omp parallel
!$omp end parallel
 end subroutine
 subroutine sub03()
!$omp parallel
!$omp end parallel
 end subroutine
end

print *,"pass"
end
