      real*8 a(11)/11*0/
      real*8 b(11)/11,10,9,8,7,6,5,4,3,2,1/
      real*8 c(11)/1,2,3,4,5,6,7,8,9,10,11/
      do i=1,10
         a(i) = 1/sqrt(b(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) = 1/sqrt(b(i))*2
      enddo
      write(6,*) a
      do i=2,11
         a(i) = c(i)/sqrt(b(i))
      enddo
      write(6,*) a
      end
