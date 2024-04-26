      real*8 b( 0:100,  0:1),a(101)
      real*8 res(0:100)
      integer*8 list(0:100)

      do i=0,99,2
         list(i) = 0
         list(i+1) = 1
         res(i) = i
         res(i+1) = -(i+1)
      enddo
      res(100) = 0
      res(0) = 0
      res(1) = 0
      res(2) = 0
      res(3) = 0
      res(4) = 0
      res(5) = 0

      do i=0,100
         b(i,0)= i
         b(i,1)= -i
         a(i+1) = 0
      enddo
         
      do i = 0,99
         if (i.gt.5) then
            a(i+1) = b(   i, list(i))
         endif
      end do
      
      do i=0,100
         if (a(i+1).ne.res(i)) then
            write(6,*) i,a(i+1),res(i)
         endif
      enddo
      write(6,*) "ok"
      end
