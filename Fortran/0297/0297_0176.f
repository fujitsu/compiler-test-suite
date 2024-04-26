       real*4 a(1000)
       real*4 b(1000)
       real*8 c(1000)
       real*8 d(1000)
       integer ind(1000)
       integer n/1/,m/2/
       data a,b/1000*1.0,1000*2.0/
       data c,d/1000*1.0,1000*2.0/

       do i=1,500,2
         a(i+n) = a(i+m) + b(i)
         c(i) = c(i-(-1)) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       ind = 1
       do i=1,200
         a(ind(i)) = a(ind(i) + 1) + b(i)
       enddo

       print*, a(1),a(500),a(1000)

       do i=1,500,2
         a(i:i+1:1) = a(i+1:i+2:1)
       enddo

       print*, a(1),a(500),a(1000)

       do i=1,500,4
         a(i:i+1:1) = a(i+2:i+3:1)
       enddo

       print*, a(1),a(500),a(1000)


       end
