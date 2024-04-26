       integer*4 d,a(10)
       d = 10
       do i=1,10
         a(i) = i
       enddo

       do i=1,10
         d = d + a(i)
       enddo
       print*, d
       end
