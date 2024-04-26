      call i1()
      call i2()
      call i4()
      call i8()
      end

      subroutine i1
      integer*1 c(1),a(10)/1,2,3,4,5,6,7,8,9,10/
      real x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            c(1) = a(i) + 2
         endif
5       continue
      write(6,*) c
      end
      subroutine i2
      integer*2 c(1),a(10)/1,2,3,4,5,6,7,8,9,10/
      real x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            c(1) = a(i) + 2
         endif
5       continue
      write(6,*) c
      end
      subroutine i4
      integer*4 c(1),a(10)/1,2,3,4,5,6,7,8,9,10/
      real x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            c(1) = a(i) + 2
         endif
5       continue
      write(6,*) c
      end
      subroutine i8
      integer*8 c(1),a(10)/1,2,3,4,5,6,7,8,9,10/
      real x(10)/5,5,-10,-10,5,-10,-10,5,5,-10/
      do 5  i=1,10
         if( x(i) .gt.0 ) then
            c(1) = a(i) + 2
         endif
5       continue
      write(6,*) c
      end
