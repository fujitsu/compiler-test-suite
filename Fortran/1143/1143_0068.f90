module mod                          ! 1), 4), 8)
  interface
    module subroutine sub()         ! 2), 6)
    end subroutine
  end interface
end

submodule (mod) smod                ! 3), 4), 10)
  interface
    module subroutine smod2_proc()
    end subroutine
  end interface
contains
  module subroutine sub             ! 5), 6)
  end 
end 

submodule (mod:smod) smod2          ! 7), 8), 9), 10)
contains
  module subroutine smod2_proc      ! 11)
    call sub                        ! 12)
  end subroutine 
end 





use mod
print *,'sngg207n : pass'
end
