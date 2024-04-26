       integer*4 d,a(10,10),b(10)
       ind1 = 0
       ind2 = 0
       d = 0
       b = 0

       do j=1,10
         do i=1,10
           a(i,j) = i + j
         enddo
       enddo

       do j=1,10
         do i=1,10
           if (d < a(i,j)) then
             d = a(i,j)
             ind1 = i
             ind2 = j
             b(1) = j
           endif
         enddo
       enddo
       print*, d,ind1,ind2
       print*, b
       end
