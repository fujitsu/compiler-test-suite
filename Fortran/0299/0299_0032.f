       integer a(100),s
       data a/100*1/
       s = 0
       do i=1,100
         if (a(i)>0) then
           s = s + 1 
         endif
       enddo
       print*, s
       end
