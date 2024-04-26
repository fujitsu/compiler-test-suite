       real*4 a(1000)
       real*4 b(1000)
       real*8 c(1000)
       real*8 d(1000)
       data a,b/1000*1.0,1000*2.0/
       data c,d/1000*1.0,1000*2.0/

       do i=201,600
         a(i-200) = a(i+200) + b(i)
         c(i+200) = c(i-100) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       do i=1,500,2
         a(i+1) = a(i+2) + b(i)
         c(i+3) = c(i+2) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       do i=1,500,4
         a(i) = a(i+3) + b(i)
         c(i) = c(i+4) + d(i)
       enddo

       print*, a(1),a(500),a(1000)
       print*, c(1),c(500),c(1000)

       end
