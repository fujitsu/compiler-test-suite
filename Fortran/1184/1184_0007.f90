 module mod                          ! 1), 4), 8)
           interface
             module subroutine s           ! 2), 6)
             end 
           end interface
          interface
             module subroutine u           ! 2), 6)
             end 
          end interface
 end module mod
        
 submodule (mod) smod1               ! 3), 4), 10)
        contains
       module procedure s              ! 5), 6)
       end 
 end submodule smod1
    
    submodule (mod:smod1) smod2         ! 7), 8), 9), 10)
          interface
            module subroutine smod3_proc
            end 
          end interface
    contains
       module procedure u              ! 5), 6)
       end 
    end submodule smod2

    submodule (mod:smod2) smod3         ! 7), 8), 9), 10)
    contains
      module subroutine smod3_proc      ! 11)
        call u
      end 
    end 

use mod
print *,'sngg492o : pass'
end
