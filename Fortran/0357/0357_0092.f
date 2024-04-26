       module modc
       private
       integer,parameter::a=1
       integer,parameter::pc=3
       end module modc
c
       subroutine sub
       use modc    
       integer,parameter::a=2
       integer,parameter::pc=2
       print *,a
       print *,pc
       return
       end subroutine
c
       program pri
       call sub
       end program pri
