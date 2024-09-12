       integer(kind=4),dimension(10,10) :: a,c
       integer(kind=4),dimension(10,10,10) :: b,d

       data a/100*0/,c/100*1/

       do i=1,10
         do j=1,10
           do k=1,10
             b(i,j,k) = i+j+k
             d(i,j,k) = i+j+k
           enddo
         enddo
       enddo

       do i=1,10
         do j=1,10
           do k=1,10
             a(j,k) = a(j,k) + b(i,j,k)
           enddo
         enddo
         do j=1,10
           do k=1,10
             c(j,k) = c(j,k) + d(i,j,k)
           enddo
         enddo
       enddo

       print*, a(1,1),a(5,5),a(10,10)
       print*, c(1,1),c(5,5),c(10,10)

       stop
       end
