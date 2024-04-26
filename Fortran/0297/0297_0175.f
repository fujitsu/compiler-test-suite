       real*4 a(1000)
       real*4 b(1000)
       real*8 c(1000)
       real*8 d(1000)
       integer j
       data a,b/1000*1.0,1000*2.0/
       data c,d/1000*1.0,1000*2.0/

       do i=1,500,2
         a(i*2) = a(i) + b(i)
         c(i) = c(i+i) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       j = 1
       do i=1,200
         a(j+1) = a(j+2) + b(i)
         c(j+3) = c(j+2) + d(i)
         j = j + 4
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       j = 1
       do i=1,500,4
         a(i) = a(j+3) + b(i)
         c(i) = c(j+4) + d(i)
         j = j + 4
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       end
