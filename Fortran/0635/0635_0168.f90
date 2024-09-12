       integer(kind=4) :: n,m
       integer(kind=4),dimension(3000) :: a1
       data n/300/,m/300/
       data a1/3000*0/

       call sub1(a1, n,m)
       end

       subroutine sub1(a1, n, m)

       integer(kind=4) :: n,m
       integer(kind=4),dimension(3000) :: a1
       integer(kind=4),dimension(3000,300) :: b1
       integer(kind=8),dimension(n) :: a2
       integer(kind=8),dimension(n,m) :: b2

       do j=1,300
         do i=1,3000
           a1(i) = j
           b1(i,j) = a1(i) + 1
         enddo
       enddo

       print*, sum(a1)
       print*, b1(1,1)

       do j=1,m
         do i=1,n
           a2(i) = j
           b2(i,j) = a2(i) + 1
         enddo
       enddo

       print*, sum(a2)
       print*, b2(1,1)

       return
       end
