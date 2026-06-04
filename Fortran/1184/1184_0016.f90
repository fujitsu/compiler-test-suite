 module mod                          ! 1), 4), 8)
           interface
             module subroutine s           ! 2), 6)
             end 
             module subroutine t           ! 2), 6)
             end 
             module subroutine sub           ! 2), 6)
             end subroutine sub
           end interface
 end module mod
        
 submodule (mod) smod1               ! 3), 4), 10)
          interface
            module subroutine smod2_proc
            end subroutine smod2_proc
            module subroutine smod21_proc
            end 
            module subroutine smod4_proc
            end 
             module subroutine u           ! 2), 6)
             end 
          end interface
        contains
       module procedure s              ! 5), 6)
         call smod2_proc
       end 
       module procedure sub              ! 5), 6)
         write(50,*) 1
       end procedure sub
 end submodule smod1
    
    submodule (mod:smod1) smod2         ! 7), 8), 9), 10)
          interface
            module subroutine smod3_proc
            end 
          end interface
    contains
      module subroutine smod21_proc      ! 11)
        call sub                        ! 12)
      end 
      module subroutine smod2_proc      ! 11)
        call sub                        ! 12)
        call smod3_proc                 ! 12)
      end subroutine smod2_proc
       module procedure u              ! 5), 6)
         call sub
       end 
       module procedure t              ! 5), 6)
         call sub
       end 
    end submodule smod2

    submodule (mod:smod2) smod3         ! 7), 8), 9), 10)
          interface
             module subroutine v           ! 2), 6)
             end 
          end interface
    contains
      module subroutine smod3_proc      ! 11)
        call sub                        ! 12)
        call smod21_proc                 ! 12)
        call t
        call u
        call smod4_proc                 ! 12)
        call v
      end 
       module procedure v              ! 5), 6)
         call sub
       end 
    end 

    submodule (mod:smod3) smod4         ! 7), 8), 9), 10)
    contains
      module subroutine smod4_proc      ! 11)
        call sub                        ! 12)
        call smod21_proc                 ! 12)
        call t
        call v
      end 
    end 

use mod
call t
call s
call sub
do kn=1,12
rewind 50
read(50,*) k
if (k/=1) print *,1001
end do
print *,'sngg501o : pass'
end
