       subroutine sub(a,b)
       integer*4 a
       integer*8 b,c
       c=b+ishft(a,31)
       print*,c         
       end subroutine
 
       integer*4 a
       integer*8 b
       a=2
       b=0
       call sub(a,b)
       end
