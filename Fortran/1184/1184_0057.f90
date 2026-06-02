 module mod                          ! 1), 4), 8)
           interface
             module function s()           ! 2), 6)
             end 
             module function t  ()         ! 2), 6)
             end 
             module function sub  ()         ! 2), 6)
             end function sub
             module function z      ()     ! 2), 6)
             end 
           end interface
 end module mod
        
 submodule (mod) smod1               ! 3), 4), 10)
          interface
            module function smod2_proc()
            end function smod2_proc
            module function smod21_proc()
            end 
            module function smod4_proc()
            end 
             module function u ()
             end 
             module function r ()
             end 
            module function smod6_proc()
            end 
          end interface
        contains
       module function s()            ! 5), 6)
         call= smod2_proc()
if (call/=1) print *,9001
         s=1
       end 
       module function sub()            ! 5), 6)
         write(8,*) 1
sub=1
       end function sub
 end submodule smod1
    
    submodule (mod:smod1) smod2         ! 7), 8), 9), 10)
          interface
            module function smod5_proc()
            end 
             module function w ()
             end 
            module function smod3_proc()
            end 
          end interface
    contains
      module function smod21_proc()    ! 11)
        call= sub         ()               ! 12)
if (call/=1) print *,9001
smod21_proc=1
      end 
      module function smod2_proc  ()  ! 11)
        call= sub()                        ! 12)
if (call/=1) print *,9001
        call= smod3_proc()                 ! 12)
smod2_proc=1
      end 
       module function u            ()! 5), 6)
         u   = sub()
if (u/=1) print *,9001
       end 
       module function t    ()        ! 5), 6)
         call= sub()
         call= r()
         call= w()
if (call/=1) print *,9001
t=call
       end 
             module function  w()
                    call= sub()
if (call/=1) print *,9001
w=call
             end 
    end submodule smod2

    submodule (mod:smod2) smod3 
          interface
             module function v()
             end 
          end interface
    contains
      module function smod3_proc ()
        call= sub                ()
        call= smod21_proc       ()
        call= t()
        call= u()
        call= smod4_proc       ()
        call= v()
if (call/=1) print *,9001
smod3_proc=1
      end 
       module function r     ()
         call= sub()
if (call/=1) print *,9001
r=1
       end 
       module function v    ()
         call= sub()
         call= smod5_proc()
         call= w()
if (call/=1) print *,9001
v=1
       end 
    end 

    submodule (mod:smod3) smod4         ! 7), 8), 9), 10)
    contains
      module function smod4_proc()
        call= sub                ()
        call= smod21_proc       ()
        call= t()
        call= v()
if (call/=1) print *,9001
smod4_proc=1
      end 
      module function z  ()
          call= smod6_proc     ()
          call= w()
if (call/=1) print *,9001
z=1
      end
    end 

    submodule (mod:smod4) smod5 
    contains
      module function smod5_proc()    ! 11)
        call= r()
        call= w()
if (call/=1) print *,9001
smod5_proc=1
      end 
    end 

    submodule (mod:smod5) smod6 
    contains
      module function smod6_proc  ()  ! 11)
        call= r()
        call= smod5_proc()
        call= smod4_proc()
        call= sub()
        call= smod3_proc()
        call= v()
        call= u()
        call= t()
        call= smod2_proc()
        call= smod21_proc()
        call= w()
if (call/=1) print *,9001
smod6_proc=1
      end 
    end 

use mod
call= t()
call= s()
call= sub()
call= z()
if (call/=1) print *,9001
do kn=1,88
rewind 8
read(8,*) k
if (k/=1) print *,1001
end do
print *,'sngg542o : pass'
end
