       integer s/0/
       integer b(10)/1,2,3,4,5,6,7,8,9,1/

       do j=1,10
         s = max(s,b(j))
       enddo
       print*, s
       end
