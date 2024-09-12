      integer*4 a(10),b(10),c(10)
      data b/10*5/,c/10*2/,a/10*0/
      do 10 i=1,10
        if ( b(i) .lt. i ) go to 30
          if ( c(i) .lt. i ) go to 10
            b(i) = 1.0
            go to 20
  30    continue
          if ( c(i) .gt. i ) go to 10
            b(i) = 2.0
  20    a(i) = b(i)
  10  continue
      write(6,*) a
      stop
      end
