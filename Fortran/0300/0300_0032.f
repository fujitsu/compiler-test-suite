       integer(kind=4),dimension(1000) :: a,c,d
       integer(kind=4),dimension(1000,1000) :: b

       data a/1000*1/,c/1000*2/,d/1000*3/
       data b/1000000*0/

       do i=1,100
         do j=1,1000
           a(j) = i + d(j)
           b(i,j) = a(1) + c(j)
         enddo
       enddo

       print*, a(1),a(10),a(100),a(1000)
       print*, b(1,1),b(10,10),b(100,100),b(1000,1000)

       do i=1,100
         do j=1,1000
           a(j) = i + d(j)
         enddo
         do j=1,1000
           b(i,j) = a(1) + c(j)
         enddo
       enddo

       print*, a(1),a(10),a(100),a(1000)
       print*, b(1,1),b(10,10),b(100,100),b(1000,1000)
       end
