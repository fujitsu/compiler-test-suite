          integer,volatile:: e(4)
          call test (e(::2))
           print*,"pass" 
         contains
           subroutine test(v)
             integer, asynchronous:: v(..)
             if(rank(v)/=1)print*,101
             if(is_contiguous(v).neqv. .false.)print*,102
           end subroutine
        end
       

