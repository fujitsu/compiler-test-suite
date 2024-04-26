       integer*4 d,a(10)
       ind1 = 0
       d = 0

       do j=1,10
         a(j) = j
       enddo

       do j=1,10
         do i=1,10
           if (d < a(i)) then
             d = a(i)
             ind1 = i
           endif
         enddo
       enddo
       print*, d,ind1
       end
