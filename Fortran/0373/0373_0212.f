       subroutine sub(a,b)
       integer*4 a,b,d(0:0)
       d(0)=0
       do i=a,b
         d(ishft(i,31))=1
       end do
       print*,d(0)      
       end 
 
       integer*4 a,b
       a=2;b=2
       call sub(a,b)
       end
