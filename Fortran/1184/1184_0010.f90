 module mod                          ! 1), 4), 8)
           interface
             module subroutine s           ! 2), 6)
             end 
           end interface
          interface
            module subroutine smod3_proc
            end 
          end interface
 end module mod
        
 submodule (mod) tmod1               ! 3), 4), 10)
          interface
             module subroutine u           ! 2), 6)
             end 
          end interface
        contains
       module procedure s              ! 5), 6)
       end 
 end 
    
    submodule (mod:tmod1) wd
    contains
       module subroutine u              ! 5), 6)
       end 
    end 

    submodule (mod:wd) q
    contains
      module subroutine smod3_proc      ! 11)
        call u
      end 
    end 

use mod
print *,'sngg495o : pass'
end
