      dimension a(10),b(10)
      data y/8.0/,z/10.0/
      do 10 i=1,10
        if ( i .le. 5 ) go to 30
          if ( y .le. 7.0 ) go to 10
            b(i) = 1.0
            go to 20
  30    continue
          if ( z .le. 8.0 ) go to 10
            b(i) = 2.0
  20    a(i) = b(i)
  10  continue
      write(6,*) a
      stop
      end
