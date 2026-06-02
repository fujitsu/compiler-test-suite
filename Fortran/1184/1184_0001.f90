 module mod                          ! 1), 4), 8)
           interface
             module subroutine s           ! 2), 6)
             end 
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
       module procedure s              ! 5), 6)
         call smod2_proc
       end 
       module procedure sub              ! 5), 6)
         write(45,*) 1
       end procedure sub
 end submodule smod1
    
    submodule (mod:smod1) smod2         ! 7), 8), 9), 10)
    contains
      module subroutine smod2_proc      ! 11)
        call sub                        ! 12)
      end subroutine smod2_proc
    end submodule smod2


use mod
call s
rewind 45
read(45,*) k
if (k/=1) print *,8001
print *,'sngg486o : pass'
end
