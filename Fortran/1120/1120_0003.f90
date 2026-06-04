module mod
  procedure(),pointer :: ppp
  contains
  subroutine sub01()
    print *,'sub'
  end subroutine
end module

use mod
call omp_set_num_threads(2)
!$omp parallel private(ppp)
  ppp=>sub01
  call ppp()
!$omp end parallel
end
