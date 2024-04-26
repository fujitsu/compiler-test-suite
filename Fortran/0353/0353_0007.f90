      real*8 b( 0:100,  0:1),a(101)
      real*8 res(0:100)
      integer*8 list(0:100)

      do i=0,99,2
         list(i) = 0
         list(i+1) = 1
         res(i) = i
         res(i+1) = (i+1)
      enddo
      list(100) = 0
      res(100) = 100

      do i=0,100
         b(i,0)= i
         b(i,1)= -i
         a(i+1) = i
      enddo
         
      do i = 0,99
         b(   i, list(i)) = a(i+1)
      end do
      
      do i=0,100
         if (b(i,list(i)).ne.res(i)) then
            write(6,*) i,b(i,list(i)),res(i)
         endif
      enddo
      write(6,*) "ok"
      end
