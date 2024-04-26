      real*4 a(11)/11*0/,b(11)/1,2,3,4,5,6,7,8,9,10,11/
      real*4 c(11)/1,2,3,4,5,6,7,8,9,10,11/,r1
      r1 = c(1)
      do i=1,10
         a(i) = 1/sqrt(b(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) = 1/sqrt(b(i))*2
      enddo
      write(6,*) a
      do i=2,11
         a(i) = 2/sqrt(b(i)+c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) = r1/sqrt(b(i))
      enddo
      write(6,*) a
      end
