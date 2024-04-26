
      complex*8  a(10),b(10),c(10),d(10),e(10)
      complex*8  tmp

      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = i
         d(i) = i*2
         e(i) = i+2
      enddo

      do i=1,10
         tmp = b(i) + c(i)
         a(i) = tmp + b(i)
         tmp = a(i) + c(i)
         a(i) = tmp + d(i) - e(i)
      enddo

      write(6,*) a
      
      END                      
