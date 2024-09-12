       subroutine sub(a)
       integer*4 a,d(0:0)
       d(0)=0
       d(ishft(a,31))=1
       print*,d(0)      
       end 
 
       integer*4 a
       a=2
       call sub(a)
       end
