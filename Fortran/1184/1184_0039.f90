 module mod                          ! 1), 4), 8)
           interface
             module subroutine s           ! 2), 6)
             end 
             module subroutine t           ! 2), 6)
             end 
             module subroutine sub           ! 2), 6)
             end subroutine sub
             module subroutine z           ! 2), 6)
             end 
             module subroutine w 
             end 
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
             module subroutine u 
             end 
             module subroutine r 
             end 
            module subroutine smod6_proc
            end 
          end interface
        contains
       module subroutine s              ! 5), 6)
         call smod2_proc
         call w
       end 
       module subroutine sub              ! 5), 6)
         write(43,*) 1
       end subroutine sub
 end submodule smod1
    
    submodule (mod:smod1) smod2         ! 7), 8), 9), 10)
          interface
            module subroutine smod5_proc
            end 
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
       module subroutine u              ! 5), 6)
         call sub
       end 
       module subroutine t              ! 5), 6)
         call sub
         call r
         call w
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
       module subroutine r              ! 5), 6)
         call sub
       end 
       module subroutine v              ! 5), 6)
         call sub
         call smod5_proc
         call w
       end 
    end 

    submodule (mod:smod3) smod4         ! 7), 8), 9), 10)
    contains
             module subroutine  w
                    call sub
             end 
      module subroutine smod4_proc      ! 11)
        call sub                        ! 12)
        call smod21_proc                 ! 12)
        call t
        call v
      end 
      module subroutine z  
          call smod6_proc      ! 11)
          call w
      end
    end 

    submodule (mod:smod4) smod5 
    contains
      module subroutine smod5_proc      ! 11)
        call r
        call w
      end 
    end 

    submodule (mod:smod5) smod6 
    contains
      module subroutine smod6_proc      ! 11)
        call r
        call smod5_proc
        call smod4_proc
        call sub
        call smod3_proc
        call v
        call u
        call t
        call smod2_proc
        call smod21_proc
        call w
      end 
    end 

use mod
call t
call s
call sub
call z
call w
do kn=1,88
rewind 43
read(43,*) k
if (k/=1) print *,1001
end do
print *,'sngg524o : pass'
end
