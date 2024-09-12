      common /com/ x,a(1000), b(1000)

      x = 3.0
      do i=1,1000
         a(i) = 0
         b(i) = 2.0
      enddo

      write(6,*) a(1),b(1),x
      end
