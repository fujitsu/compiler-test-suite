       integer*4 d,a(10,10)
       d = 0

       do j=1,10
         do i=1,10
           a(i,j) = i + j
         enddo
       enddo

       call sub1(d,a)
       end

       subroutine sub1(d,a)

       integer*4 d,a(10,10),x

       ind1 = 0
       ind2 = 0

       do j=1,10
         do i=1,10
           x = d - a(i,j)
           if (x < 0) then
             d = a(i,j)
             ind1 = i
             ind2 = j
           endif
         enddo
       enddo
       print*, d,ind1,ind2
       return
       end


