       integer*4 d,a(10,10),x
       ind1 = 0
       ind2 = 0
       d = 0

       do j=1,10
         do i=1,10
           a(i,j) = i + j
         enddo
       enddo

       do j=1,10
         do i=1,10
           x = a(i,j) - d
           if (0 < x) then
             d = a(i,j)
             ind1 = i
             ind2 = j
           endif
         enddo
       enddo
       print*, d,ind1,ind2
       end
