      complex a(10),b(10)/10*20/
      real   x(10),y(10)/10*0/
      equivalence(a(1),x(1))
      do i=1,10
        x(i) = 1
        a(i) = 10
      enddo

      write(6,*) a
      write(6,*) x

      do  i=1,10
         x(i) = b(i)
         y(i) = a(i)+5
      enddo
      WRITE(6,*)y
      end

