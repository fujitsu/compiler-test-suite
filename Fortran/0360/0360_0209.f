      integer*1 ll1(1)/20/
      integer*2 ll2(1)/20/
      integer*4 ll4(1)/20/
      integer*8 ll8(1)/20/
      call i1(ll1)
      call i2(ll2)
      call i4(ll4)
      call i8(ll8)
      end

      subroutine i1(ll1)
      real c(1),a(10)/1,2,3,4,5,6,7,8,9,10/
      integer*1 ll1(1)
      real x(10)/10*-10/
      ll1(1) = 1
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            ll1(1) = a(i) + 2
         endif
5       continue
      write(6,*) ll1
      end
      subroutine i2(ll2)
      real a(10)/1,2,3,4,5,6,7,8,9,10/
      integer*2 ll2(1)
      real x(10)/10*-10/
      ll2(1) = 1
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            ll2(1) = a(i) + 2
         endif
5       continue
      write(6,*) ll2
      end
      subroutine i4(ll4)
      real a(10)/1,2,3,4,5,6,7,8,9,10/
      integer*4 ll4(1)
      real x(10)/10*-10/
      ll4(1) = 1
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            ll4(1) = a(i) + 2
         endif
5       continue
      write(6,*) ll4
      end
      subroutine i8(ll8)
      real a(10)/1,2,3,4,5,6,7,8,9,10/
      integer*8 ll8(1)
      real x(10)/10*-10/
      ll8(1) = 1
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            ll8(1) = a(i) + 2
         endif
5       continue
      write(6,*) ll8
      end
