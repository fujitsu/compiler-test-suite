      call r4()
      call r8()
      end

      subroutine r4
      real c(9,2),d(9,2),a(10)/1,2,3,4,5,6,7,8,9,10/
      real x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      data c,d/36*0/
      do 5  i=1,9
         if( x(i) .gt.0 ) then
            c(i,1) = a(i) + 2
            c(i,2) = a(i) + 3
         else
            d(i,1) = a(i) - 4
            d(i,2) = a(i) - 5
         endif
5       continue
      write(6,*) c
      write(6,*) d
      end

      subroutine r8
      real*8 c(9,2),d(9,2),a(10)/1,2,3,4,5,6,7,8,9,10/
      real*8 x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      data c,d/36*0/
      do 5  i=1,9
         if( x(i) .gt. 0) then
            c(i,1) = a(i) + 2
            c(i,2) = a(i) + 3
         else
            d(i,1) = a(i) - 4
            d(i,2) = a(i) - 5
         endif
5       continue
      write(6,*) c
      write(6,*) d
      end
