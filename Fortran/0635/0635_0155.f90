       integer(kind=4),dimension(3000,3000) :: a1
       integer(kind=4),dimension(3000,3000) :: b1
       integer(kind=8),dimension(3000,3000) :: a2
       integer(kind=8),dimension(3000,3000) :: b2
       equivalence(a1,b1), (a2,b2)

       do j=1,3000
         do i=1,3000
           a1(i,1) = j
           b1(i,j) = a1(i,1) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,3000
         do i=1,3000
           a2(i,3000) = j
           b2(i,j) = a2(i,3000) + 1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       end
