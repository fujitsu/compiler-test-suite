       integer*4 d,a(10),x
       d = 1
       do i=1,10
         a(i) = i
       enddo
       do i=1,10
         x = d - a(i)
         if (x < 0) then
           d = a(i)
         endif
       enddo
       print*, d
       end
