       module modc
       private
       integer,parameter::a=1
       integer,parameter::pc=3
       end module modc
       subroutine sub
       use modc    
       integer,parameter::a=2
       integer,parameter::pc=2
       print *,a
       print *,pc
       return
       end subroutine
       program main
       call sub
       end program main
