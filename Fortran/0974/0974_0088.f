       integer(kind=4),dimension(10,10) :: a
       integer(kind=4),dimension(10,10,10) :: b

       data a/100*0/

       do i=1,10
         do j=1,10
           do k=1,10
             b(i,j,k) = i+j+k
           enddo
         enddo
       enddo

       do i=1,10
         do j=1,10
           do k=1,10
             a(j,k) = a(j,k) + b(i,j,k)
           enddo
         enddo
       enddo

       print*, a(1,1),a(5,5),a(10,10)

       end
