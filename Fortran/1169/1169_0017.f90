module mod
  interface
    module subroutine sub()
    end subroutine
  end interface
end

submodule (mod) smod
  interface
    module subroutine proc2()
    end subroutine
  end interface
contains
  module procedure sub
  end 
end 

submodule (mod:smod) smod2
contains
  module subroutine proc2
  end subroutine 
  subroutine xxx
    call sub  
  end subroutine
end 





use mod
print *,'sngg204n : pass'
end
