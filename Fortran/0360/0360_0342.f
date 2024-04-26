      real*8 a(11)/11*0/,b(11)/1,2,3,4,5,6,7,8,9,10,11/
      real*8 c(11)/1,2,3,4,5,6,7,8,9,10,11/
      real*4 r4a(11)/11*0/,r4b(11)/1,2,3,4,5,6,7,8,9,10,11/

      do i=1,10
         a(i) = sin(dble(c(i)))/sqrt(abs(cos(b(i))))
      enddo
      write(6,*) a
      do i=1,10
         a(i) = 1/sqrt(b(i))*2
         r4a(i) = 1/sqrt(r4b(i))
      enddo
      write(6,*) a
      write(6,*) r4a
      do i=1,10
         r4a(i) = c(i)/sqrt(r4b(i))
      enddo
      write(6,*) r4a
      do i=1,10
         a(i) = r4b(i)/sqrt(b(i))
      enddo
      write(6,*) a
      end
