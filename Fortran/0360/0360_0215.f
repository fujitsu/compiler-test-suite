      call r4()
      call r8()
      end

      subroutine r4
      real c(10)/10*0/,d(10)/10*0/,a(10)/1,2,3,4,5,6,7,8,9,10/
      real x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            c(i) = a(i) + 2
         else
            d(i) = a(i) - 4
         endif
5       continue
      write(6,*) c
      write(6,*) d
      end

      subroutine r8
      real*8 c(10)/10*0/,d(10)/10*0/,a(10)/1,2,3,4,5,6,7,8,9,10/
      real*8 x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      do 5  i=1,10
         if( x(i) .gt. 0) then
            c(i) = a(i) + 2
         else
            d(i) = a(i) - 4
         endif
5       continue
      write(6,*) c
      write(6,*) d
      end
