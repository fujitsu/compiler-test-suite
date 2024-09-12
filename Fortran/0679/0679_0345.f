      dimension a(10),b(10),c(10),d(10)
      data x/0.5/,c/1,2,3,4,5,6,7,8,9,10/,d/1,1,3,3,5,5,7,7,9,9/
      data a/10*0.0/,b/1,2,3,4,5,6,7,8,9,10/
      do 10 i=1,10
        if ( x .gt. 1.0 ) go to 100
          if ( c(i) .eq. d(i) ) go to 10
 100        a(i) = b(i)
  10  continue
      write(6,*) a
      stop
      end
