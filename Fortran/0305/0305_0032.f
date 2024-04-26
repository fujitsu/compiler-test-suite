      real a(5000),b(5000)
      do i=1,5000
         a(i) = i
      enddo

      do i=1,100
         a(i+2) = 2
         a(i+1) = 2
         a(i+103) = 1
         b(i) = a(i+3) + a(i+3)
      enddo

      write(6,*) b(1)
      end
