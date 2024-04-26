      real*4 b( 0:100,  0:1),a(101)
      real*4 res(101)
      real*8 c(0:100)
      integer list(0:100)

      do i=0,99,2
         list(i) = 0
         list(i+1) = 1
         res(i+1) = (i)
         res(i+2) = -(i+1)
      enddo
      res(100) = -99
      res(101) = 0
      c(100) = 0

      do i=0,100
         b(i,0)= i
         b(i,1)= -i
         a(i+1) = 0
      enddo
         
      do i = 0,99
         a(i+1) = b(   i, list(i))
         c(i) = 0
      end do
      
      do i=1,101
         if (a(i).ne.res(i)) then
            write(6,*) i,a(i),res(i), c(i)
         endif
      enddo
      write(6,*) "ok"
      end
