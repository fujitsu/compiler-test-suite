       real*4 a(1000)
       real*4 b(1000)
       real*8 c(1000)
       real*8 d(1000)
       data a,b/1000*1.0,1000*2.0/
       data c,d/1000*1.0,1000*2.0/

       do i=501,1000
         a(i-500) = a(i) + b(i)
         c(i) = c(i-500) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       do i=1,500,2
         a(i) = a(i+1) + b(i)
         c(i) = c(i+2) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       do i=1,500,2
         a(i) = a(i+3) + b(i)
         c(i) = c(i+4) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       end

      
