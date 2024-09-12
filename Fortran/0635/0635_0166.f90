       integer(kind=1),dimension(100) :: a1
       integer(kind=1),dimension(100,3) :: b1
       integer(kind=2),dimension(300) :: a2
       integer(kind=2),dimension(300,100) :: b2
       integer(kind=4),dimension(300) :: a4
       integer(kind=4),dimension(300,300) :: b4
       integer(kind=8),dimension(300) :: a8
       integer(kind=8),dimension(300,300) :: b8

       do j=1,3
         do i=1,100
           a1(i) = j
         enddo
         do i=1,100
           b1(i,j) = a1(i) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,100
         do i=1,300
           a2(i) = j
         enddo
         do i=1,300
           b2(i,j) = a2(i) + 1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       do j=1,300
         do i=1,300
           a4(i) = j
         enddo
         do i=1,300
           b4(i,j) = a4(i) + 1
         enddo
       enddo

       print*, sum(a4)
       print*, b4(1,1)

       do j=1,300
         do i=1,300
           a8(i) = j
         enddo
         do i=1,300
           b8(i,j) = a8(i) + 1
         enddo
       enddo

       print*, sum(a8)
       print*, b8(1,1)
       end
