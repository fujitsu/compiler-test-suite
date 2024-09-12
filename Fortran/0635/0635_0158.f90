       integer(kind=4),dimension(3000) :: a1
       integer(kind=4),dimension(3000,3000) :: b1
       data a1/3000*0/

       call sub1(a1, b1)
       print*, sum(a1)
       print*, b1(1,1)

       end

       subroutine sub1(a1, b1)

       integer(kind=4),dimension(3000) :: a1
       integer(kind=4),dimension(3000,3000) :: b1

       do j=1,3000
         do i=1,3000
           a1(i) = j
           b1(i,j) = a1(i) + 1
         enddo
       enddo

       return
       end
