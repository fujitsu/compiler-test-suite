       integer(kind=1),dimension(10) :: a1
       integer(kind=1),dimension(10,30) :: b1
       integer(kind=2),dimension(300) :: a2
       integer(kind=2),dimension(300,300) :: b2
       integer(kind=4),dimension(300) :: a4
       integer(kind=4),dimension(300,300) :: b4
       integer(kind=8),dimension(300) :: a8
       integer(kind=8),dimension(300,300) :: b8

       do j=1,30
         do i=1,10
           a1(i) = j
           b1(i,j) = a1(i) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,300
         do i=1,300
           a2(i) = j
           b2(i,j) = a2(i) + 1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       do j=1,300
         do i=1,300
           a4(i) = j
           b4(i,j) = a4(i) + 1
         enddo
       enddo

       print*, sum(a4)
       print*, b4(1,1)

       do j=1,300
         do i=1,300
           a8(i) = j
           b8(i,j) = a8(i) + 1
         enddo
       enddo

       print*, sum(a8)
       print*, b8(1,1)
       end
