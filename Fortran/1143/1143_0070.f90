module mod                          ! 1), 4), 8)
  interface
    module subroutine sub           ! 2), 6)
    end subroutine sub
  end interface
end module mod

submodule (mod) smod1               ! 3), 4), 10)
  interface
    module subroutine smod2_proc
    end subroutine smod2_proc
  end interface
contains
  module subroutine sub             ! 5), 6)
  end subroutine sub
end submodule smod1

submodule (mod:smod1) smod2          ! 7), 8), 9), 10)
       implicit none
contains
  module subroutine smod2_proc      ! 11)
    call sub                        ! 12)
  end subroutine smod2_proc
end submodule smod2





program main
use mod
print *,'sngg211n : pass'
end program
