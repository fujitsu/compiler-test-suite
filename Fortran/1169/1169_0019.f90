module mod
  interface
    module subroutine sub()
    end subroutine
  end interface
end

submodule (mod) smod
  interface
    module subroutine smod2_proc()
    end subroutine
  end interface
contains
  module procedure sub
  end 
end 

submodule (mod:smod) smod2
contains
  module subroutine smod2_proc
    call sub  
  end subroutine 
end 





use mod
print *,'sngg206n : pass'
end
