       integer(kind=4),dimension(-5:4,0:9) :: a,c
       integer(kind=4),dimension(10,-5:4,0:9) :: b,d

       data a/100*0/,c/100*1/

       do i=1,10
         do j=-5,4
           do k=0,9
             b(i,j,k) = i+j+k
             d(i,j,k) = i+j+k
           enddo
         enddo
       enddo

       do i=1,10
         do j=-5,4
           do k=0,9
             a(j,k) = a(j,k) + b(i,j,k)
           enddo
         enddo
         do j=-5,4
           do k=0,9
             c(j,k) = c(j,k) + d(i,j,k)
           enddo
         enddo
       enddo

       print*, a(-5,1),a(0,5),a(4,9)
       print*, c(-5,1),c(0,5),c(4,9)

       stop
       end
