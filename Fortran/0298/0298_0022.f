       integer*4 d,a(10,10)
       ind1 = 0
       ind2 = 0
       d = 0

       do j=1,10
         do i=1,10
           a(i,j) = i + j
         enddo
       enddo

       call sub1(a,d,ind1,ind2)

       print*, d,ind1,ind2
       end

       subroutine sub1(a,d,ind1,ind2)
       integer*4 d,a(10,10)
       integer*4 ind1,ind2

       do j=1,10
         do i=1,10
           if (d < a(i,j)) then
             d = a(i,j)
             ind1 = i
             ind2 = j
           endif
         enddo
       enddo

       return
       end
